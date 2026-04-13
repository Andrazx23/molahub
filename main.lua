
repeat task.wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character
if not game:IsLoaded() then
    game.Loaded:Wait()
end

print("Supported game!")

local creatorId = game.CreatorId

local communityCreators = {
    [9091133975] = "https://raw.githubusercontent.com/Andrazx23/molahub/refs/heads/main/CatchAndTame.lua", -- Catch And Tame
    [1002185259]    = 'https://raw.githubusercontent.com/Andrazx23/molahub/refs/heads/main/SailorPiece.lua', -- Sailor Piece
}

if communityCreators[creatorId] then 
    print("game supported! Loading script...")
    loadstring(game:HttpGet(communityCreators[creatorId]))()
else
    warn("Unsupported game.")
end
