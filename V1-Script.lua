--// Nexora | RIVALS
--// Main Loader

local HttpService = game:GetService("HttpService")

local GameId = 17625359962
local ScriptURL = "https://raw.githubusercontent.com/jixyuk12nh-maker/Rivals_script/main/jixyuk12nh.lua"

if game.PlaceId ~= GameId then
    return
end

local function LoadScript()
    local Success, Result = pcall(function()
        return game:HttpGet(ScriptURL)
    end)

    if not Success then
        warn("[Nexora] Failed to download script:", Result)
        return
    end

    local Execute, Error = loadstring(Result)

    if not Execute then
        warn("[Nexora] Failed to compile script:", Error)
        return
    end

    local Loaded, RuntimeError = pcall(Execute)

    if not Loaded then
        warn("[Nexora] Script error:", RuntimeError)
    end
end

LoadScript()
