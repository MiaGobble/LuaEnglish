local parser = {}

local types = require(script.Parent.types)
local splitter = require(script.Parent.splitter)

local function findNextTypeInCode(code : string)
    local discoveredType = nil

    for _, codeType in pairs(types) do
        for _, pattern in pairs(codeType) do
            local tokenOrder = splitter:getTokenOrder(pattern.english)
            local start, finish = string.find(code, table.concat(tokenOrder:gsub(".", "%."), "."))

            if start then
                discoveredType = {
                    codeType = codeType,
                    start = start,
                    finish = finish,
                }
                break
            end
        end
    end

    return discoveredType
end

function parser:parse(code : string)
    local start = os.clock()

    while true do
        local discoveredType = findNextTypeInCode(code)

        if os.clock() - start > 1 then
            warn("Exhausted compile time")
        elseif discoveredType then
            local parameters = splitter:findParametersInToken(discoveredType.codeType.english, code:sub(discoveredType.start, discoveredType.finish))
            local replacement = discoveredType.codeType.lua

            for index, parameter in pairs(parameters) do
                replacement:gsub("!PARAM" .. index, parameter)
            end

            code = code:sub(1, discoveredType.start - 1) .. replacement .. code:sub(discoveredType.finish + 1, #code)
        else
            break
        end
    end

    return code
end

return parser