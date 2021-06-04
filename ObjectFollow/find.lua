local [CHANGE] = game.Workspace:WaitForChild("[CHANGE]")
local Players = game:GetService("Players")

local RS = game:GetService("RunService")

local MaxDistance = 6

--[[FINDING NEAREST GLOBAL
(change [CHANGE] to the part/model you want to use it on)]]
local FindPlayer = function()
    local LocalPlayer = game:GetService("Players").LocalPlayer
    
    if LocalPlayer then
        if (LocalPlayer.Character) then
            local Torso = LocalPlayer.Character.Torso
            if (Torso.Position - [CHANGE].Position).Magnitude < MaxDistance then
                return Torso
            end
        end
    end
    return false
end

RS.RenderStepped:Connect(function()
    if FindPlayer() then
        local Target = FindPlayer()
        [CHANGE].CFrame = CFrame.new([CHANGE].Position,Target.Position)
    end
end)
