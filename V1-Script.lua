if game.GameId ~= 6035872082 then
    return
end

-- 게임 로딩 완료 대기
if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- 캐릭터 대기
local character = player.Character or player.CharacterAdded:Wait()

-- 기본 캐릭터 요소 대기
character:WaitForChild("Humanoid")
character:WaitForChild("HumanoidRootPart")

-- 원래 로더
loadstring(game:HttpGet("https://raw.githubusercontent.com/jixyuk12nh-maker/Rivals_script/main/jixyuk12nh.lua"))()
