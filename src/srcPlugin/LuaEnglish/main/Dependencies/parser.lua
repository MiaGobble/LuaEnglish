local parser = {}

local language = script.Parent.Parent.Language

local function checkForTrigger(source : string)
    local trigger = nil

    for _, module in language:GetChildren() do
        local parseSignal = require(module)

        if string.find(source, parseSignal.trigger) then
            trigger = parseSignal
            break
        end
    end

    return trigger
end

function parser:ParseCode(code : string)
    local src = ""
    local cache = ""
    local charSet = string.split(code, "")
    local indexSkips = 0
    local queuedTrigger = nil

    for index, char in charSet do
        if indexSkips > 0 then
            indexSkips -= 1
            continue
        end

        cache = cache .. char

        local trigger = checkForTrigger(cache)

        if trigger then
            if queuedTrigger then
                local sourceBegin = string.sub(code, index + 1)
                local codeBit, indexEnd = queuedTrigger.parse(sourceBegin)
    
                indexSkips = indexEnd
                src = src .. codeBit
                cache = ""
            end

            queuedTrigger = trigger
        end
    end

    return src
end

return parser