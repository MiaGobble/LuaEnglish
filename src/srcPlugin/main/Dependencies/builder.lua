local builder = {}

local ServerStorage = game:GetService("ServerStorage")

local parser = require(script.Parent.parser)
local emergency = require(script.Parent.emergency)

local function stripHeaderComments(srcEnglish)
    local firstBreak = srcEnglish:find("\n")
    local lastBreak = srcEnglish:reverse():find("\n")

    if not firstBreak then
        emergency:panic("English identifying header not found")
    end

    if not lastBreak then
        emergency:panic("English identifying footer not found")
    end

    lastBreak += 1

    return srcEnglish:sub(firstBreak + 1, srcEnglish:len() - lastBreak)
end

local function buildScript(scriptObject)
    local srcEnglish = stripHeaderComments(scriptObject.Source)
    local src = parser:parse(srcEnglish, scriptObject.Name:gsub("%.", "/") .. ".lua")
    local finalObject = scriptObject

    if scriptObject.Name:find("server.") then
        local newObject = Instance.new("Script")
        
        for _, child in scriptObject:GetChildren() do
            child.Parent = newObject
        end

        newObject.Name = scriptObject.Name:sub(8)
        newObject.Parent = scriptObject.Parent
        scriptObject:Destroy()
        finalObject = newObject
    elseif scriptObject.Name:find("client.") then
        local newObject = Instance.new("Script")
        
        for _, child in scriptObject:GetChildren() do
            child.Parent = newObject
        end

        newObject.Name = scriptObject.Name:sub(8)
        newObject.Parent = scriptObject.Parent
        scriptObject:Destroy()
        finalObject = newObject
    end

    finalObject.Source = src

    return finalObject
end

local function isObjectAScript(object : Instance)
    return object:IsA("Script") or object:IsA("LocalScript") or object:IsA("ModuleScript")
end

function builder:build()
    local path = ServerStorage:FindFirstChild("src")

    if not path then
        emergency:panic("Could not find src folder in ServerStorage")
    end

    for _, bin in path:GetChildren() do
        local parent = game:FindFirstChild(bin.Name)
        
        parent:ClearAllChildren()

        for _, object in bin:GetChildren() do
            local buildSource = object:Clone()

            if isObjectAScript(object) then
               buildSource = buildScript(buildSource)
            end

            for _, subObject in object:GetDescendants() do
                if isObjectAScript(subObject) then
                    buildScript(subObject)
                end
            end

            buildSource.Parent = parent
        end
    end
end

return builder