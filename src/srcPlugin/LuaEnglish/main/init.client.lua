local dependencies = script.Dependencies

local builder = require(dependencies.builder)

function _G.build()
    print("build src")

    builder:build()

    print("build done")
end

print("a")

function _G.test()
    local engToken = "methodName !PARAM2, !PARAM3, !PARAM1 "
    local inputToken = "methodName a, b, c"

    -- should be c, a, b

    local splitter = require(script.Dependencies.splitter)
    print(splitter:findParametersInToken(engToken, inputToken))
end

print("b")