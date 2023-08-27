local dependencies = script.Dependencies

local builder = require(dependencies.builder)

local function build()
    warn("Building English to Lua...")

    local success, error = pcall(builder.build, builder)

    if success then
        warn("Build and compiled successfully")
    else
        error(`Build failed. Error: {error}`)
    end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------

_G.build = build