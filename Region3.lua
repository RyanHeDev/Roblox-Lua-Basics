--[[
Region 3 :

Instructions:
Make a part called A and B and Part 
Put the Script inside ServerScriptService and call it RegionThreeScript
Credit : Tab
]]
-- Defining A and B
local A = workspace.A
local B = workspace.B
-- Defining the Region
local Region = Region3.new(A.Position, B.Position)
-- Printing the Size cordinants
print(Region.Size)
-- Printing the CFrame cordinants
print(Region.CFrame)
-- Cloning the part
local Clone = A:Clone()
--Adding the clone to the middle
Clone.CFrame = Region.CFrame
-- Changing the clone color to Yellow
Clone.BrickColor = BrickColor.new("New Yeller")
-- Adding the Clone to workspace
Clone.Parent = workspace
--[[Making the Cloned Part the size of the region (math.abs is to make the position positif in maths its called the absolute value, its negative)
Clone.Size = Vector3.new(math.abs(Region.Size.X),math.abs(Region.Size.Y),math.abs(Region.Size.Z))
]]
-- In our case its positive so we are going to use this
Clone.Size = Region.Size
-- Changing the transparency
Clone.Transparency = 0.7
-- Cancollide 
Clone.CanCollide = false
-- While loops
while wait() do
	local Parts = workspace:FindPartsInRegion3(Region, workspace.Part, 100)
	-- For loops
	for i, v in pairs(Parts) do 
		print(v)
	end
	print("--------------")
end

-- More Region3 : https://create.roblox.com/docs/reference/engine/datatypes/Region3
