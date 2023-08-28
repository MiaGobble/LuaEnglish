return {
    {
        lua = `function !PARAM3:!PARAM1(!PARAM2)`,
        english = `consider a method named !PARAM1 that takes !PARAM2 and is a part of !PARAM3, which can:`,
    },

    {
        lua = `function !PARAM3.!PARAM1(!PARAM2)`,
        english = `consider a function named !PARAM1 that takes !PARAM2 and is a part of !PARAM3, which can:`,
    },

    {
        lua = `function !PARAM1(!PARAM2)`,
        english = `a function named !PARAM1 that takes !PARAM2 as parameters, which can:`,
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

    {
        lua = `!PARAM1:Connect(!PARAM2)`,
        english = `upon !PARAM1 happening, call function !PARAM2 at that time`,
    },

    {
        lua = `!PARAM1:Connect(!PARAM2)`,
        english = `upon !PARAM1 happening, call function !PARAM2 at that time`,
    },

    {
        lua = "{}",
        english = `a blank table`,
    },

    {
        lua = "local !PARAM1 = {}",
        english = `declare !PARAM1 as a module`,
    },

    {
        lua = "!PARAM1.__index = !PARAM2",
        english = `!PARAM1 is a class, meaning !PARAM2 should refer to itself`,
    },

    {
        lua = "return !PARAM1",
        english = `as a reminder, this is a module named !PARAM1 usable by other scripts`,
    },

    {
        lua = "return !PARAM1",
        english = `as a reminder, this is a class named !PARAM1 usable by other scripts`,
    },

    {
        lua = "...",
        english = `all tuple arguments`,
    },

    {
        lua = "return !PARAM1",
        english = `lets give back !PARAM1 to the above scope`,
    },

    {
        lua = `game:GetService("!PARAM1")`,
        english = `the !PARAM1 service`,
    },
}