local TeleportService = game:GetService("TeleportService")
 
local placeID = PLACE ID GOES HERE
 
local function onPartTouch(otherPart)
    local player = game.Players:GetPlayerFromCharacter(otherPart.Parent)
    if player then
        TeleportService:Teleport(placeID, player)
    end
end

script.Parent.Touched:Connect(onPartTouch)
