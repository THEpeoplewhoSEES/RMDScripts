--[[FOLLOW SCRIPT
(change and remove the brackets [CHANGE] to the part/model you want to use it on)]]
script.Parent = game:GetService("ServerScriptService")

local [CHANGE] = game.Workspace:WaitForChild("[CHANGE]")
local Players = game:GetService("Players")

local RS = game:GetService("RunService")

local MaxDistance = 10 --Diamater not radius (which means it's aprox 5 from it)


local FindPlayer = function()
    local c = game.Workspace:GetChildren()
    
    for i,v in ipairs(c) do
        if Players:GetPlayerFromCharacter(v) then
            local Torso = v:FindFirstChild("Torso")
            if (Torso.Position - [CHANGE].Position).Magnitude < MaxDistance then
                return Torso
            end
        end
    end
    return false
end

RS.Heartbeat:Connect(function()
    if FindPlayer() then
        local Target = FindPlayer()
        [CHANGE].CFrame = CFrame.new([CHANGE].Position,Target.Position)
    end
end)
