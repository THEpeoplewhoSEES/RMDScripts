local player = game.Players.LocalPlayer
local ContextActionService = game:GetService("ContextActionService")

ContextActionService:BindAction(
	"Action",
	function ()
		return Enum.ContextActionResult.Sink
	end,
	false,
	Enum.UserInputType.MouseWheel
)

player.CharacterAdded:Connect(function()
    local plrGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
 
 
    local screenGui = Instance.new("ScreenGui", plrGui)
 
    local txtButton = Instance.new("TextButton")
    txtButton.BackgroundTransparency = 1
    txtButton.Size = UDim2.new(0, 0, 0, 0)
    txtButton.Text = ""
     
    txtButton.Modal = true
     
    txtButton.Parent = screenGui
end)
