--!strict

local HttpGet = game.HttpGet
local GameId: number = game.GameId

local Games: {[number]: string} = {
    [6035872082] = "https://raw.githubusercontent.com/jixyuk12nh-maker/Rivals_script/main/jixyuk12nh.lua"
}

local URL: string? = Games[GameId]

if not URL then
    return
end

loadstring(HttpGet(game, URL))()
