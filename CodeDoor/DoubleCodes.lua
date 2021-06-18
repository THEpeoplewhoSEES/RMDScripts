local msg1 = "FirstCode"
local msg2 = "LastCode"
local FirstWasChatted = false

game.Players.PlayerAdded:Connect(function(plr)

Plr.Chatted:Connect(function(msg)
If msg == msg1 then
FirstWasChatted = true
elseif msg == msg2 then
If FirstWasChatted == true then
--//make the part appear
else
end
end
end)
end)
