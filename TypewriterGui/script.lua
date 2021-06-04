local TextLabel = script.Parent
local Text

function SoundEffect()
    local Sound = Instance.new("Sound", workspace)
    Sound.Name = "TextSound"
    Sound.SoundId = "http://www.roblox.com/asset/?id=3333976425"
    Sound.Volume = 1
    Sound:Play()
    coroutine.resume(coroutine.create(function()
        wait(1)
        Sound:Destroy()     
    end))
end

function setText(word)
    Text = word
    for i = 1, #Text do
        TextLabel.Text = string.sub(Text, 1, i)
        SoundEffect()
        TextLabel.TextColor3 = Color3.fromRGB (0, 0, 0)
        wait(0.4)
    end
end

wait(10)
setText(“your text”)
