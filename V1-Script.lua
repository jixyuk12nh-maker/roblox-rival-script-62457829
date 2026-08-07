if game.GameId ~= 6035872082 then
    return
end

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

-- LoadingScreen.MainFrame 감지
local mainFrame

repeat
    local loadingScreen = PlayerGui:FindFirstChild("LoadingScreen")

    if loadingScreen then
        mainFrame = loadingScreen:FindFirstChild("MainFrame")
    end

    task.wait(0.1)
until mainFrame

-- 감지 후 3초 대기
task.wait(3)

-- 스크립트 실행
loadstring(game:HttpGet("https://raw.githubusercontent.com/jixyuk12nh-maker/Rivals_script/main/jixyuk12nh.lua"))()

이제 "LoadingScreen.MainFrame"이 존재하는 걸 감지하면 3초 후 원격 스크립트가 실행돼.
