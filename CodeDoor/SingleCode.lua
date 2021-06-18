--//All credits for this script goes to The_GreatDevourer (Do not remove this or istg)
--//Chat triggered door with a nice tween effect
--//place this in a localScript in StarterGui

--//Variables/TweenService

local part = game.Workspace.Wall --// Change wall with the name of your part
local plr = game.Players.LocalPlayer--// getting the player
local t = game:GetService("TweenService")--//Getting the tween service
local tinf = TweenInfo.new(0.5,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0)--//Setting up the tween info
local partprop1 = {    --//Creating the part properties this one will make the brick turn invisible
    Transparency = 1;

}
local partprop2 = {    --//and this one will turn the part back to normal
    Transparency = 0;

}
local Debounce = true --//setting up a cooldown so you cant break the script by spamming the code


--// Function

plr.Chatted:Connect(function(msg)--//Triggers when the player chats
    if msg == "Code" and Debounce == true then --// checks if the cooldown is reloaded and if the message matches the code, change code with your own
        Debounce = false--//Cooldown starts
        t:Create(part,tinf,partprop1):play()--//creating the first tween that will turn the part invisible
        part.CanCollide = false--//collision turned off
        wait(3.5)
        t:Create(part,tinf,partprop2):play()--// second tween will make the part visible again after the 3.5 second wait
        part.CanCollide = true --// collision is turned on
        wait(3.5)
        Debounce = true--//cooldown is done
        else
    end
end)
