script.Parent.Touched:Connect(function(hit)
  if hit.Parent and hit.Parent:FindFirstChild("Humanoid") and game.Players:GetPlayerFromCharacter(hit.Parent) then
    local Player = game.Players:GetPlayerFromCharacter(hit.Parent)
  end
  if Player.UserId == game.CreatorId then
    script.Parent.CanCollide = false
    wait(1)
    script.Parent.CanCollide = true
  else
    script.Parent.CanCollide = true
  end
end)
