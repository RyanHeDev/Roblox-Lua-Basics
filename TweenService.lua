--[[
Instructions 

Make 3 Parts 1 called A, B, Part

Credit: Tab
]]
-- TweenService:

--Calling the tweenservice
local TweenService = game.TweenService
--Calling the Parts
local Part = workspace.Part
local A = workspace.A
local B = workspace.B
-- Positioning the part
Part.Position = A.Position

-- Defining Tweens Variables
-- Info : 5 for time to wait | The shape of the Tween | Style of Direction
local Info = TweenInfo.new(5,Enum.EasingStyle.Circular,Enum.EasingDirection.In)
local PropertyTable  = {
	["Position"] = B.Position;
	["Transparency"] = 0.5;
	["Color"] = Color3.fromRGB(255, 255, 255)
}

-- Creating the tween and tweening Info and ProperyTable
local Tween = TweenService:Create(Part, Info, PropertyTable)
-- Waitting 2 seconds
wait(2)
-- Playing the tween
Tween:Play()
-- Waitting for the tween to complete
Tween.Completed:Wait()
-- Destroying the part
Part:Destroy()

-- EasingStyle : https://create.roblox.com/docs/reference/engine/enums/EasingStyle
-- EasingDirection : https://create.roblox.com/docs/reference/engine/enums/EasingDirection
