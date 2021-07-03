local Cooldown = 2.5

repeat wait() until script.Parent.Parent.Character
Character = script.Parent.Parent.Character

local Human = Character:WaitForChild("Humanoid")
local LastJump = time()

Human.Changed:connect(function(Prop)
    if Prop and Prop == "Jump" and Human.Jump then
        local CurrentTime = time()
        if LastJump + Cooldown > CurrentTime then
            Human.Jump = false
        else
            LastJump = CurrentTime
        end
    end
end)
