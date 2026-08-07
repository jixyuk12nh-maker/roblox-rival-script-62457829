if game.GameId ~= 6035872082 then
    return
end

-- Roblox 게임 로딩이 끝날 때까지 대기
if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- 캐릭터가 생성될 때까지 대기
local character = player.Character or player.CharacterAdded:Wait()

-- 캐릭터의 기본 요소가 준비될 때까지 대기
local humanoid = character:WaitForChild("Humanoid", 30)
local rootPart = character:WaitForChild("HumanoidRootPart", 30)

if not humanoid or not rootPart then
    return
end

-- 캐릭터가 Workspace에 들어올 때까지 대기
repeat
    task.wait(0.1)
until character.Parent == workspace

-- 모든 준비가 끝난 후 로더 실행
loadstring(game:HttpGet("https://raw.githubusercontent.com/jixyuk12nh-maker/Rivals_script/main/jixyuk12nh.lua"))()
