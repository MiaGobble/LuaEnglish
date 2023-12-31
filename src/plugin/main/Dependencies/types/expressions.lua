return {--[[
    {
        lua = ``,
        english = ``,
    },
    ]]

    -- {
    --     lua = `!PARAM1 + !PARAM2`,
    --     english = `!PARAM1 plus !PARAM2`,
    -- },

    {
        lua = `!PARAM2 += !PARAM1`,
        english = `add !PARAM2 and !PARAM1 together`,
    },

    -- {
    --     lua = `!PARAM1 - !PARAM2`,
    --     english = `!PARAM1 minus !PARAM2 nu`,
    -- },

    {
        lua = `!PARAM1 -= !PARAM2`,
        english = `subtract !PARAM2 and !PARAM1 together`,
    },

    -- {
    --     lua = `!PARAM1 * !PARAM2`,
    --     english = `!PARAM1 times !PARAM2`,
    -- },

    {
        lua = `!PARAM1 *= !PARAM2`,
        english = `multiply !PARAM1 and !PARAM2 together`,
    },

    -- {
    --     lua = `!PARAM1 / !PARAM2`,
    --     english = `!PARAM1 divided by !PARAM2`,
    -- },

    {
        lua = `!PARAM1 /= !PARAM2`,
        english = `divide !PARAM1 from !PARAM2 together`,
    },

    {
        lua = `!PARAM1 % !PARAM2`,
        english = `remainder of !PARAM1 divided by !PARAM2 together`,
    },

    -- {
    --     lua = `!PARAM1 ^ !PARAM2`,
    --     english = `!PARAM1 to the power of !PARAM2`,
    -- },

    {
        lua = `!PARAM1 .. !PARAM2`,
        english = `!PARAM1 joined with !PARAM2`,
    },

    {
        lua = `!PARAM1 == !PARAM2`,
        english = `!PARAM1 is equal to !PARAM2`,
    },

    {
        lua = `!PARAM1 = !PARAM2`,
        english = `set !PARAM1 to !PARAM2`,
    },

    {
        lua = `!PARAM1 ~= !PARAM2`,
        english = `!PARAM1 is not equal to !PARAM2`,
    },

    {
        lua = `!PARAM1 <= !PARAM2`,
        english = `!PARAM1 is less than or equal to !PARAM2`,
    },

    {
        lua = `!PARAM1 < !PARAM2`,
        english = `!PARAM1 is less than !PARAM2`,
    },

    {
        lua = `!PARAM1 >= !PARAM2`,
        english = `!PARAM1 is greater than or equal to !PARAM2`,
    },

    {
        lua = `!PARAM1 > !PARAM2`,
        english = `!PARAM1 is greater than !PARAM2`,
    },

    -- {
    --     lua = `!PARAM1 and !PARAM2`,
    --     english = `!PARAM1 and !PARAM2`,
    -- },

    -- {
    --     lua = `!PARAM1 or !PARAM2`,
    --     english = `!PARAM1 or !PARAM2`,
    -- },

    -- {
    --     lua = `!PARAM1 not !PARAM2`,
    --     english = `!PARAM1 not !PARAM2`,
    -- },

    {
        lua = "{!PARAM1}",
        english = `list: !PARAM1. end of list`,
    },

    {
        lua = "#!PARAM1",
        english = `length !PARAM1 as a number`,
    },

    -- {
    --     lua = `!PARAM1.!PARAM2`,
    --     english = `PARAM`,
    -- }
}