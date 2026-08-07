if game.GameId ~= 6035872082 then
    return
end

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

character:WaitForChild("Humanoid")
character:WaitForChild("HumanoidRootPart")

loadstring(game:HttpGet("https://raw.githubusercontent.com/jixyuk12nh-maker/Rivals_script/main/jixyuk12nh.lua"))()
