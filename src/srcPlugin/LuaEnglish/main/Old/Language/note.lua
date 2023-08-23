return {
    trigger = "note:",

    parse = function(sourceBegin : string)
        local index, indexEnd = string.find(sourceBegin, "end of note.")
        
        if index then
            local commentBody = string.sub(sourceBegin, 1, index - 1)
            return `--[[{commentBody}]]`, indexEnd
        else
            error("note does not have closing tag")
        end
    end
}