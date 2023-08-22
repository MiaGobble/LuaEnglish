local map = {
    ["variable"] = "local"
}

return {
    trigger = "make a ",

    parse = function(sourceBegin : string)
        local objectTypeEndIndex = string.find(" ")
        local objectType = string.sub(sourceBegin, 1, objectTypeEndIndex - 1)

        sourceBegin = string.sub(sourceBegin, objectTypeEndIndex + 2)

        local objectNameEndIndex = string.find("named ")
        local objectName = string.sub(sourceBegin, 1, objectNameEndIndex - 1)

        sourceBegin = string.sub(sourceBegin, objectNameEndIndex + 2)

        local valueEndIndex = string.find("and set it to ")
        local value = string.sub(sourceBegin, 1, valueEndIndex - 1)

        sourceBegin = string.sub(sourceBegin, valueEndIndex + 2)

        local index, indexEnd = string.find(sourceBegin, ";;")

        objectName = map[objectName] or objectName
        
        if index then
            return `{objectType}`
        else
            error("';;' not found")
        end
    end
}