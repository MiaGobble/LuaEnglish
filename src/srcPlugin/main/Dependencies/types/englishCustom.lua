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
}