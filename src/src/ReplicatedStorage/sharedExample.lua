--[[ LUAENGLISH -- DO NOT DELETE THIS LINE -- 
declare mySharedModule as a module

consider a function named multiplyTwoNumbers that takes a, b and is a part of mySharedModule, which can:
    remember product and set it to a * b
    lets give back product to the above scope
thats it.

consider a function named setWalkspeed that takes playerName, speed and is a part of mySharedModule, which can:
    remember character and set it to call the FindFirstChild method from workspace using playerName as parameters
    
    if character is not equal to nothing then
        remember humanoid and set it to call the FindFirstChild method from character using "Humanoid" as parameters
        
        if humanoid is not equal to nothing then
            set variable humanoid.WalkSpeed to speed
        otherwise
            say: "There is no humanoid in " joined with playerName and stop speaking.
        thats it.
    otherwise
        say: "There is no character named " joined with playerName and stop speaking.
    thats it.
thats it.

consider a function named getRandomFruit that takes zilch and is a part of mySharedModule, which can:
    remember words and set it to list: "Apple", "Banana", "Orange", "Pear", "Pineapple". end of list
    remember randomIndex and set it to call the random function from math using 1, the length of words as a number + 5 as parameters

    note:
        this picks a random word, but has a chance of not picking one at all! if so, it will say "No fruit was picked."
        however, if it the number is equal to EXACTLY 6, say "Almost picked the fruit! Close but no cigar."

        it then returns the fruit picked, which is equal to nothing if no fruit was picked.
    end of note.

    if randomIndex is equal to 6 then
        say: "Almost picked the fruit! Close but no cigar." and stop speaking.
    otherwise if randomIndex is less than or equal to the length of words as a number then
        say: "Picked " joined with words[randomIndex] and stop speaking.
    otherwise
        say: "No fruit was picked." and stop speaking.
    thats it.

    lets give back randomIndex to the above scope
thats it.

as a reminder, this is a class named mySharedModule usable by other scripts
-- LUAENGLISH -- DO NOT DELETE THIS LINE -- ]]