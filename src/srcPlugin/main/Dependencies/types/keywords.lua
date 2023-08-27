return {
    -- {
    --     lua = `if !PARAM1 then !PARAM2`,
    --     english = `if !PARAM1 then !PARAM2`,
    -- },

    -- {
    --     lua = `while !PARAM1`,
    --     english = `while !PARAM1`,
    -- },

    {
        lua = `break`,
        english = `stop this loop.`,
    },

    -- {
    --     lua = `true`,
    --     english = `true`,
    -- },

    -- {
    --     lua = `false`,
    --     english = `false`,
    -- },

    {
        lua = `else !PARAM1`,
        english = `otherwise !PARAM1:`,
    },

    {
        lua = `for !PARAM1`,
        english = `loop !PARAM1:`,
    },

    -- {
    --     lua = `until !PARAM1`,
    --     english = `until !PARAM1`,
    -- },

    {
        lua = ` do`,
        english = ` lets:`,
    },

    {
        lua = `end`,
        english = `thats it.`,
    },

    {
        lua = `!PARAM1 in !PARAM2`,
        english = `!PARAM1 read from !PARAM2;`,
    },

    {
        lua = `local !PARAM1 = !PARAM2`,
        english = `remember !PARAM1 and set it to !PARAM2`,
    },

    {
        lua = `nil`,
        english = `nothing`,
    },

    {
        lua = `repeat !PARAM1`,
        english = `keep doing !PARAM1:`,
    },
}