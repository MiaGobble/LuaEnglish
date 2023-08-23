local splitter = {}

function splitter:separateStringIntoLines(string : string)
    -- For every line in the string, add it to the table
    local lines = {}

    for line in string:gmatch("[^\r\n]+") do
        table.insert(lines, line)
    end

    return lines
end

function splitter:findParametersInToken(englishToken : string, inputToken : string)
    -- Finds the parameters in a token where "!PARAM#" normally is
    -- And extract them from the inputToken

    -- Get the parameters from the english token
    local parameters = {}

    for parameter in englishToken:gmatch("!PARAM%d") do
        table.insert(parameters, parameter)
    end

    -- Then, using the parameters table, remove the beginning and end of the token
    -- So that we only have the parameters left
    local token = englishToken

    for _, parameter in ipairs(parameters) do
        token = token:gsub(parameter, "")
    end

    -- Get the parameters from the input token
    local inputParameters = {}

    for parameter in inputToken:gmatch("%w+") do
        table.insert(inputParameters, parameter)
    end

    -- Create a table with the parameters in the correct order
    local orderedParameters = {}

    for _, parameter in ipairs(parameters) do
        for _, inputParameter in ipairs(inputParameters) do
            if parameter == "!PARAM" .. #orderedParameters + 1 then
                table.insert(orderedParameters, inputParameter)
            end
        end
    end

    return orderedParameters
end

return splitter