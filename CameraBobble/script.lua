local runService = game:GetService("RunService")

local character = script.Parent
local humanoid = character:WaitForChild("Humanoid")

function updateBobbleEffect()
    local currentTime = tick()
    if humanoid.MoveDirection.Magnitude > 0 then
        local bobbleX = math.cos(currentTime * 10) * .25
        local bobbleY = math.abs(math.sin(currentTime * 10)) * .25

        local bobble = Vector3.new(bobbleX, bobbleY, 0)

        humanoid.CameraOffset = humanoid.CameraOffset:lerp(bobble, .25)
    else 
        humanoid.CameraOffset = humanoid.CameraOffset * .75
    end
end

runService.RenderStepped:Connect(updateBobbleEffect)
