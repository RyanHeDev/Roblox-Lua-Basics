
--[[
Animation Script CREDIT : TAB
Instructions:

Make an animation
Make a local script in StarterPack and call it Animation Script
Make animation inside the localScript and paste your animation id
]]
-- Calling UserInputService for keys
local UserinputService = game:GetService("UserInputService")
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
AnimationTrack.Looped = false

-- you can use this
local function onInBegan(input, gameProcessed)
	if input.KeyCode == Enum.KeyCode.Space then
		AnimationTrack:Play()
		--or this one:

		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			-- Playing the animation
			AnimationTrack:Play()
		end
	end
end
-- Connecting
UserinputService.InputBegan:Connect(onInBegan)
