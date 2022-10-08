
--[[
Animation Script CREDIT : TAB
Instructions:

Make an animation
Make a local script in StarterPack and call it Animation Script
Make animation inside the localScript and paste your animation id
]]

-- Declaring the player object
local Player = game.Players.LocalPlayer
-- Declaring the character
local Character = Player.Character or Player.CharacterAdded:Wait()
-- Declaring the humanoid and waitting for it children
local Humanoid = Character:WaitForChild("Humanoid")
-- Storing Animation
local Animation = script.Animation
-- Loading the Animation inside the Humanoid
local AnimationTrack = Humanoid:LoadAnimation(Animation)
-- Setting the animationtrack priority to Action (Look in animation priority)
AnimationTrack.Priority = Enum.AnimationPriority.Action
-- To loop the animation
AnimationTrack.Looped = true
-- Playing the animation
AnimationTrack:Play()
-- Wait
wait(3)
-- Animation Speed
AnimationTrack:AdjustSpeed(0.5)
-- Stopping the animation
AnimationTrack:Stop()
