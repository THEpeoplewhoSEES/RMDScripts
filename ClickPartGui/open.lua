local player = game.Players.LocalPlayer
local GUI = script.Parent
local part = workspace.YourPartName --Replace this with the name of your part.

part.ClickDetector.MouseClick:Connect(function(playerWhoClicked)
  if playerWhoClicked == player then
    GUI.Visible = true
  end
end) 
