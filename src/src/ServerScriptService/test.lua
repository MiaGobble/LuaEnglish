--[[
note:
Testing "for all" loop.
end of note

remember myStuffInWorkspace as a blank list
remember maximumThings as 25

for all index and object derived from the children of workspace, lets:
    remember objectName as the Name from object

    add objectName to list myStuffInWorkspace

    if index is greater than or equal to maximumThings, lets:
        say: "Stopped looking for things in workspace, because the max is " joined with maximumThings and stop speaking.
        stop this loop
    otherwise
        say: "Found " joined with objectName and stop speaking.
    thats all
thats all

say: "End result: " joined with the entireity of myStuffInWorkspace separated by ", " and stop speaking.

--================================================================================================--

note:
Test script for the "for all" loop.
end of note

when ChildAdded from workspace happens, call a new function with child:
    remember childName as the Name from child

    if childName exists in myStuffInWorkspace lets:
        say: "Already found " joined with childName and stop speaking.
    otherwise
        say: "Found " joined with childName and stop speaking.
    thats all
thats all

--================================================================================================--

--]]