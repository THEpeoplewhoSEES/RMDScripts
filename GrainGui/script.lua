local RunService = game:GetService("RunService")
local Textures = {
    268592485,
    268592462,
    268592427,
    268590007,
}
local Frames = {}

for i,v in pairs(Textures) do
    local ImageLabel = Instance.new("ImageLabel")
    ImageLabel.Image = "http://www.roblox.com/asset/?id="..v
    ImageLabel.BackgroundTransparency = 1
    ImageLabel.ImageTransparency = 0.58
    ImageLabel.Visible = true
    ImageLabel.Size = UDim2.new(1,0,1,0)
    ImageLabel.Parent = script.Parent
    Frames[#Frames+1] = ImageLabel
end

local FramesToWait = 3
while true do
    local Last = nil
    for i,v in pairs(Frames) do
        if Last ~= nil then
            Last.Visible = false
        end
        v.Visible = true
        Last = v
        for i = 1, FramesToWait do RunService.RenderStepped:wait() end
    end
    Last.Visible = false
end
