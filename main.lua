if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

repeat task.wait() until LocalPlayer and LocalPlayer.Character

print("Checking game support...")

local gameId = game.GameId

local supportedGames = {
    [9091133975] = "https://raw.githubusercontent.com/Andrazx23/molahub/refs/heads/main/CatchAndTame.lua",
    [1002185259] = "https://raw.githubusercontent.com/Andrazx23/molahub/refs/heads/main/SailorPiece.lua",
    [10004244222] = "https://raw.githubusercontent.com/Andrazx23/molahub/refs/heads/main/KickAluckyblcok.lua"
}

if supportedGames[gameId] then 
    print("Game supported! Loading script...")

    local success, result = pcall(function()
        return game:HttpGet(supportedGames[gameId])
    end)

    if success and result then
        pcall(function()
            loadstring(result)()
        end)
    else
        warn("Failed to fetch script.")
    end
else
    warn("Unsupported game. GameId:", gameId)
end
