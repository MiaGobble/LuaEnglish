local dependencies = script.Dependencies

local builder = require(dependencies.builder)

local function build()
    warn("Building English to Lua...")

    local success, output = pcall(builder.build, builder)

    if success then
        warn("Build and compiled successfully")
    else
        error(`Build failed. Error: {output}`)
    end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------

_G.build = build