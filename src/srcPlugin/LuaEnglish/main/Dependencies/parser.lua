local parser = {}

local types = require(script.Parent.types)
local splitter = require(script.Parent.splitter)

local function findNextTypeInCode(code : string)
    local discoveredType = nil

    for _, codeType in pairs(types) do
        for _, pattern in pairs(codeType) do
            local 
            local start, finish = string.find(code, pattern)

            if start then
                discoveredType = type
                break
            end
        end
    end
end

function parser:parse()
    
end

return parser