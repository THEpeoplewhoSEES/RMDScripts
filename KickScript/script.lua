local KickMessage = "Put your message here between the quotes" --Put message between quotes
script.Parent.Humanoid.Changed:Connect(function) --If any property of humanoid changes (there's a better way to do this but I am just doing this bc it's easier)
  if script.Parent.Humanoid.Health <= 0 then --check if the player is dead
    game.Players[script.Parent.Name]:Kick(KickMessage) --If they are dead, kick them out with whatever the kick message is
  end
end)
