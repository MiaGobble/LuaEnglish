-- return {
--     luaGlobals = require(script.luaGlobals),
--     robloxGlobals = require(script.robloxGlobals),
--     keywords = require(script.keywords),
--     expressions = require(script.expressions),
-- }

return {
    [3] = require(script.luaGlobals),
    [4] = require(script.robloxGlobals),
    [2] = require(script.keywords),
    [1] = require(script.expressions),
}