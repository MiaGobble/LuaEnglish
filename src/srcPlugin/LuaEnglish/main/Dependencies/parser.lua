local parser = {}

local types = require(script.Parent.types)
local splitter = require(script.Parent.splitter)

local function isUnescapable(character : string, index : number, characterSet : {})
    if character == `"` then
        return true, 1, 1
    elseif (character == `-` and characterSet[index + 1] == "-" and characterSet[index + 2] == "[" and characterSet[index + 3] == "[") then
        return true, 4, 2
    elseif (character == `-` and characterSet[index + 1] == "-" and characterSet[index + 2] == "]" and characterSet[index + 3] == "]") then
        return true, 4, 2
    elseif (character == `[` and characterSet[index + 1] == "[") then
        return true, 2, 3
    elseif (character == `]` and characterSet[index + 1] == "]") then
        return true, 2, 3
    end

    return false
end

local function findNextTypeInCode(code : string, lastStart : number, lastFinish : number)
    local discoveredType = nil

    local ignoreIndexes = {}
    local characterSet = code:split("")

    local ignoreSearchIndex = 0
    local ignoreStartIndex = 0
    local ignoreSearchType = -1
    local lastIgnoreMax = 0
    local isIgnoring = false

    do
        local start = os.clock()

        repeat
            ignoreSearchIndex += 1

            local unescapable, ignoreLength, ignoreType = isUnescapable(characterSet[ignoreSearchIndex], ignoreSearchIndex, characterSet)
    
            if os.clock() - start > 1 then
                warn("Exhausted ignore time")
                break
            end

            --print(characterSet[ignoreSearchIndex])

            if unescapable then
                if isIgnoring then
                    if ignoreType == ignoreSearchType then
                        lastIgnoreMax = ignoreSearchIndex + ignoreLength - 1
                        table.insert(ignoreIndexes, {ignoreStartIndex, lastIgnoreMax})
                        isIgnoring = false
                        ignoreSearchIndex += ignoreLength - 1
                    end
                else
                    ignoreSearchType = ignoreType
                    ignoreStartIndex = ignoreSearchIndex
                    isIgnoring = true
                end
            end
        until ignoreSearchIndex >= #characterSet
    end

    for _, codeType in pairs(types) do
        for _, pattern in pairs(codeType) do
            local tokenOrder = splitter:getTokenOrder(pattern.english)
            local searchIndex = 0
            local found = true
            local start, finish = nil, nil

            for loopIndex, token in ipairs(tokenOrder) do
                local tokenIndex = code:find(token, searchIndex)

                if tokenIndex then-- and tokenIndex > searchIndex then
                    if loopIndex == 1 then
                        start = tokenIndex
                    elseif loopIndex == #tokenOrder and tokenIndex > start then
                        finish = tokenIndex + #token - 1
                        searchIndex = finish
                    end

                    continue
                else
                    found = false
                    break
                end
            end

            if found and start and finish then
                discoveredType = {
                    codeType = pattern,
                    start = start,
                    finish = finish,
                }

                for _, ignoreIndexData in ignoreIndexes do
                    if start > ignoreIndexData[1] and finish < ignoreIndexData[2] then
                        discoveredType = nil
                        warn("IGNORED", code:sub(ignoreIndexData[1], ignoreIndexData[2]))
                    end
                end

                if discoveredType then
                    break
                end
            end
        end

        if discoveredType then
            break
        end
    end

    return discoveredType
end

function parser:parse(code : string)
    local start = os.clock()

    local lastStart, lastFinish = -1, -1

    while true do
        local discoveredType = findNextTypeInCode(code, lastStart, lastFinish)

        if os.clock() - start > 1 then
            warn("Exhausted compile time")
            break
        elseif discoveredType then
            print(discoveredType.codeType)

            print(discoveredType.start, discoveredType.finish)
            local parameters = splitter:findParametersInToken(discoveredType.codeType.english, code:sub(discoveredType.start, discoveredType.finish))
            local replacement = discoveredType.codeType.lua

            print("PARAMETERS:", parameters)

            for index, parameter in parameters do
                print(index, parameter, "!PARAM" .. index, replacement:find("!PARAM" .. index))
                local replaceStart, replaceEnd = replacement:find("!PARAM" .. index)
                replacement = replacement:sub(1, replaceStart - 1) .. parameter .. replacement:sub(replaceEnd + 1, #replacement)
            end

            code = code:sub(1, discoveredType.start - 1) .. replacement .. code:sub(discoveredType.finish + 1, #code)
            lastStart, lastFinish = discoveredType.start, discoveredType.finish
        else
            break
        end

        task.wait()
        print("loop")
    end

    print("done")

    return code
end

return parser