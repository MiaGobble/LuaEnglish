return {
    {
        lua = `function !PARAM3:!PARAM1(!PARAM2)`,
        english = `consider a method named !PARAM1, which is a part of !PARAM3, also taking !PARAM2 as parameters, which:`,
    },

    {
        lua = `local function !PARAM3.!PARAM1(!PARAM2)`,
        english = `consider a function named !PARAM1, which is a part of !PARAM3, also taking !PARAM2 as parameters, which:`,
    },

    {
        lua = `local function !PARAM1(!PARAM2)`,
        english = `make a function named !PARAM1, taking !PARAM2 as parameters, which:`,
    },

    {
        lua = `function !PARAM1(!PARAM2)`,
        english = `a function named !PARAM1, taking !PARAM2 as parameters, which:`,
    },

    {
        lua = ``,
        english = `zilch`,
    },

    {
        lua = `!PARAM2:!PARAM1(!PARAM3)`,
        english = `call the !PARAM1 method from !PARAM2 using !PARAM3 as parameters`,
    },

    {
        lua = `!PARAM2.!PARAM1(!PARAM3)`,
        english = `call the !PARAM1 function from !PARAM2 using !PARAM3 as parameters`,
    },

    { -- This is put after to avoid issues
        lua = `!PARAM1(!PARAM2)`,
        english = `call function !PARAM1 with !PARAM2`,
    },

    -- {
    --     lua = `!PARAM1:Connect(!PARAM2)`,
    --     english = `upon !PARAM1 happening, call function !PARAM2 at that time`,
    -- },

    {
        lua = `!PARAM1:Connect(!PARAM2)`,
        english = `when !PARAM1 happens, call !PARAM2`,
    },

    {
        lua = "{}",
        english = `a blank list`,
    },

    {
        lua = "local !PARAM1 = {}",
        english = `this is !PARAM1`,
    },

    {
        lua = "!PARAM1.__index = !PARAM1",
        english = `!PARAM1 is a class`,
    },

    -- {
    --     lua = "return !PARAM1",
    --     english = `as a reminder, this is a module named !PARAM1 usable by other scripts`,
    -- },

    -- {
    --     lua = "return !PARAM1",
    --     english = `as a reminder, this is a class named !PARAM1 usable by other scripts`,
    -- },

    {
        lua = "...",
        english = `all parameters`,
    },

    {
        lua = "return !PARAM1",
        english = `give back !PARAM1`,
    },

    {
        lua = `game:GetService("!PARAM1")`,
        english = `the !PARAM1 service`,
    },

    {
        lua = `(!PARAM1)`,
        english = `containing !PARAM1`,
    },

    {
        lua = `self`,
        english = `myself`,
    },

    {
        lua = `!PARAM1.!PARAM2`,
        english = `the !PARAM2 from !PARAM1`,
    },

    {
        lua = `!PARAM1.!PARAM2`,
        english = `!PARAM2 from !PARAM1`,
    },

    {
        lua = `function(!PARAM1)!PARAM2end`,
        english = `a new function with !PARAM1:`,
    },

    {
        lua = `function()!PARAM1end`,
        english = `a new function:`,
    },

    {
        lua = `function(!PARAM1)!PARAM2end`,
        english = `all of this with !PARAM1:`,
    },

    {
        lua = `function()!PARAM1end`,
        english = `all of this:`,
    },

    {
        lua = `!PARAM1 ~= nil`,
        english = `!PARAM1 exists`,
    },

    {
        lua = `!PARAM1,!PARAM2`,
        english = `!PARAM1, and !PARAM2`,
    },

    {
        lua = `!PARAM1:GetChildren()`,
        english = `the things in !PARAM1`,
    },

    {
        lua = `!PARAM1:GetChildren()`,
        english = `the children in !PARAM1`,
    },

    {
        lua = `!PARAM1:GetChildren()`,
        english = `the things of !PARAM1`,
    },

    {
        lua = `!PARAM1:GetChildren()`,
        english = `the children of !PARAM1`,
    },

    {
        lua = `table.insert(!PARAM1, !PARAM2)`,
        english = `add !PARAM2 to list !PARAM1`,
    },

    {
        lua = `table.concat(!PARAM1, !PARAM2)`,
        english = `the entireity of !PARAM1 separated by !PARAM2`,
    },

    {
        lua = `!PARAM1[!PARAM2]`,
        english = `!PARAM2 inside of !PARAM1`,
    },

    {
        lua = `table.find(!PARAM1, !PARAM2) ~= nil`,
        english = `!PARAM2 exists inside of !PARAM1`,
    }
}