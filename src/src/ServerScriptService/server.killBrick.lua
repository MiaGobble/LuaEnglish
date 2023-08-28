--[[ LUAENGLISH -- DO NOT DELETE THIS LINE -- 
remember killPart and set it to workspace.Kill

a function named PartTouch that takes HitPart as parameters, which can:
    remember character and set it to HitPart.Parent
    remember humanoid and set it to call the FindFirstChild method from character using "Humanoid" as parameters

    if humanoid is not equal to nothing then
        say: "Killed" and stop speaking.
        set variable humanoid.Health to 0
    thats it.
thats it.

upon killPart.Touched happening, call function PartTouch at that time
-- LUAENGLISH -- DO NOT DELETE THIS LINE -- ]]