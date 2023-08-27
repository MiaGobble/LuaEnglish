return {--[[
    {
        lua = ``,
        english = ``,
    },
    ]]

    {
        lua = `assert(!PARAM1, !PARAM2)`,
        english = `throw error !PARAM2 if !PARAM1 is false`,
    },

    {
        lua = `collectgarbage(!PARAM1)`,
        english = `collect garbage !PARAM1`,
    },

    {
        lua = `error(!PARAM1)`,
        english = `error !PARAM1`,
    },

    {
        lua = `getmetatable(!PARAM1)`,
        english = `get the table from table !PARAM1`,
    },

    {
        lua = `ipairs(!PARAM1)`,
        english = `ordered iteration of !PARAM1, starting at 1`,
    },

    {
        lua = `newproxy(true)`,
        english = `create a new proxy metatable`,
    },

    {
        lua = `next(!PARAM1, !PARAM2)`,
        english = `iterate next key after !PARAM2 in table !PARAM1`,
    },

    {
        lua = `pars(!PARAM1)`,
        english = `iteration of !PARAM1`,
    },

    {
        lua = `pcall(!PARAM1)`,
        english = `safely run function !PARAM1`,
    },

    {
        lua = `print(!PARAM1)`,
        english = `print !PARAM1.`,
    },

    {
        lua = `rawequal(!PARAM1, !PARAM2)`,
        english = `!PARAM1 is raw equal to !PARAM2`,
    },

    {
        lua = `rawget(!PARAM1, !PARAM2)`,
        english = `raw get !PARAM2 from !PARAM1`,
    },

    {
        lua = `rawlen(!PARAM1)`,
        english = `get raw length of !PARAM1`,
    },

    {
        lua = `rawset(!PARAM1, !PARAM2, !PARAM3)`,
        english = `raw set !PARAM2 in !PARAM1 to !PARAM3`,
    },

    {
        lua = `select(!PARAM1, !PARAM2)`,
        english = `select !PARAM1 from !PARAM2`,
    },

    {
        lua = `setmetatable(!PARAM1, !PARAM2)`,
        english = `set metatable !PARAM2 to !PARAM1`,
    },

    {
        lua = `tonumber(!PARAM1, !PARAM2)`,
        english = `convert !PARAM1 to number with base !PARAM2`,
    },

    {
        lua = `tostring(!PARAM1)`,
        english = `convert !PARAM1 to string`,
    },

    {
        lua = `type(!PARAM1)`,
        english = `get type of !PARAM1`,
    },

    {
        lua = `xpcall(!PARAM1, !PARAM2)`,
        english = `safely run function !PARAM1 with error handler !PARAM2.`,
    },

    {
        lua = `coroutine.create(!PARAM1)`,
        english = `create coroutine from function !PARAM1.`,
    },

    {
        lua = `coroutine.isyieldable()`,
        english = `is coroutine yieldable?`,
    },

    {
        lua = `coroutine.resume(!PARAM1, !PARAM2)`,
        english = `resume coroutine !PARAM1 with arguments !PARAM2.`,
    },

    {
        lua = `coroutine.running()`,
        english = `get running coroutine.`,
    },

    {
        lua = `coroutine.status(!PARAM1)`,
        english = `get status of coroutine !PARAM1.`,
    },

    {
        lua = `coroutine.wrap(!PARAM1)`,
        english = `wrap function !PARAM1 in coroutine.`,
    },

    {
        lua = `coroutine.yield(!PARAM1)`,
        english = `yield coroutine with arguments !PARAM1.`,
    },

    {
        lua = `debug.debug()`,
        english = `debug.`,
    },

    {
        lua = `debug.gethook()`,
        english = `get debug hook.`,
    },

    {
        lua = `debug.getinfo(!PARAM1, !PARAM2)`,
        english = `get debug info of !PARAM1 with !PARAM2.`,
    },

    {
        lua = `debug.getlocal(!PARAM1, !PARAM2)`,
        english = `get debug local of !PARAM1 with !PARAM2.`,
    },
}