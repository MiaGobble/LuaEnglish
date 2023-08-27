local dependencies = script.Dependencies

local builder = require(dependencies.builder)

function _G.build()
    print("Building English to Lua...")

    builder:build()

    print("Build and compiled successfully!")
end