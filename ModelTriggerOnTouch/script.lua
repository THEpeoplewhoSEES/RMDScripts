local part = script.Parent 

function Touched() 
    game.ServerStorage.[MODEL NAME].Parent = game.Workspace
    script.Parent:Destroy()
end 

script.Parent.Touched:connect(onClick)
