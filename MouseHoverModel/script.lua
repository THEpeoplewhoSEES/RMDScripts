local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()

mouse.Move:Connect(function()
    script.Parent.Position = UDim2.new(0, mouse.X + 10, 0, mouse.Y + 5)
    script.Parent.Visible = false
    local target = mouse.Target
    if target and target.Parent then
        if target.Parent.ClassName == "Model" then
            script.Parent.Text = target.Parent.Name
            script.Parent.Visible = true
        end

        if target.Parent:FindFirstChild("HumanoidRootPart") then
            script.Parent.Text = target.Parent.Name
            script.Parent.Visible = true
        end

        if target:FindFirstChild("Mouseover") then
            script.Parent.Text = target.Mouseover.Value
            script.Parent.Visible = true
        end
    end
end)
