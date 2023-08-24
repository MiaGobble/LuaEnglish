local splitter = {}

function splitter:separateStringIntoLines(string : string)
    -- For every line in the string, add it to the table
    local lines = {}

    for line in string:gmatch("[^\r\n]+") do
        table.insert(lines, line)
    end

    return lines
end

function splitter:getTokenOrder(englishToken : string)
    local parameters = {}

    for parameter in englishToken:gmatch("!PARAM%d") do
        table.insert(parameters, parameter)
    end

    -- Then, using the parameters table, remove the beginning and end of the token
    -- So that we only have the parameters left
    local token = englishToken
    local tokenOrder = {}

    for index, parameter in ipairs(parameters) do
        local parameterIndex, parameterIndexEnd = token:find(parameter)
        local prefix = token:sub(1, parameterIndex - 1)

        token = token:sub(parameterIndexEnd + 1, #token)

        table.insert(tokenOrder, prefix)
    end

    return tokenOrder
end

function splitter:findParametersInToken(englishToken : string, inputToken : string)
    -- Finds the parameters in a token where "!PARAM#" normally is
    -- And extract them from the inputToken

    --      v   test    v

    --englishToken = "raw set !PARAM2 in !PARAM1 to !PARAM3"
    --inputToken = "raw set test 2 in test 1 test to footest3"
    
    --      ^   test    ^

    -- Get the parameters from the english token
    local tokenOrder = self:getTokenOrder(englishToken)

    -- Create a table with the parameters in the correct order
    local orderedParameters = {}

    for parameterIndex, parameter in ipairs(parameters) do
        local tokenOrderStart, tokenOrderEnd = inputToken:find(tokenOrder[parameterIndex])
        local nextTokenOrderStart = tokenOrder[parameterIndex + 1] ~= nil and inputToken:find(tokenOrder[parameterIndex + 1]) or #inputToken

        table.insert(orderedParameters, inputToken:sub(tokenOrderEnd + 1, nextTokenOrderStart - 1))
    end

    return orderedParameters
end

return splitter