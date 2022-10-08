
--[[
Path Finding:
Instructions: 
Make Script in ServerScriptService Called ZombiePathFinding
Add a Zombie and remove everything related to stuff you know
Make a maze or what ever
Make an end point part called EndDestination
Credit : Tab
]]

-- Path FindingService
local PathFindingService = game:GetService("PathfindingService")
--Defining Variables
--[Var:Zombie]
local Zombie = workspace.Zombie
local Humanoid = Zombie.Humanoid
--[Var:EndDestination]
local EndDestination = workspace.EndDestination

-- Creating a path
local Path = PathFindingService:CreatePath()
-- Computing the part (asking the service to findout the shortest path from a to b [nodes])
--                First is the start location       End Position
Path:ComputeAsync(Zombie.HumanoidRootPart.Position, EndDestination.Position)
-- Checking if the Computation function is succeeded
if Path.Status == Enum.PathStatus.Success then
	local Nodes = Path:GetWaypoints()
	for i, v in pairs(Nodes) do
		-- New Instance
		local node = Instance.new("Part",workspace)
		-- The new Instance properties
		node.Size = Vector3.new(1,1,1)
		node.Position = v.Position
		node.Anchored = true
		node.CanCollide = false
		-- Jump
		if v.Action == Enum.PathWaypointAction.Jump then
			Humanoid.Jump = true
		end
		-- Moving to the part
		Humanoid:MoveTo(v.Position)
		-- Waitting for the zombie (Humanoid) to finish moving to the end point
		Humanoid.MoveToFinished:Wait(1)
	end
end
-- More PathFinding : https://create.roblox.com/docs/mechanics/pathfinding
