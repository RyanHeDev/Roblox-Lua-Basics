

--[[
Make a RemoteFunctions and Event in Replicated Storage
Make a scripter called Receiver in ServerScriptService
Make a Script called Sender in StarterGui
]]
--------------------------------------------------------------------------------------------------------------------
--Receiver
-- Function
local function Fired(Player)
	-- Will execute stuff that are here
	local p = Instance.new("Part",workspace)
	p.Position = Vector3.new(0,5,0)
	p.Anchored = true
end
-- To lisent to the message
game.ReplicatedStorage.RemoteEvent.OnServerEvent:Connect(Fired)

-- Function
local function FiredFunction(Player)
	wait(2)
	return Player.Name
end
-- To lisent to the remote function
game.ReplicatedStorage.RemoteFunction.OnServerInvoke = FiredFunction
--------------------------------------------------------------------------------------------------------------------
--Sender 

-- Firing the server to send a message to the server
--  remote events doesnt return anything
local x = game.ReplicatedStorage.RemoteEvent:FireServer()

print("returned "..tostring(x))
-- remote functions do send a message back
local y = game.ReplicatedStorage.RemoteFunction:InvokeServer()

print("returned "..tostring(y))

--more about this : https://create.roblox.com/docs/scripting/events/bindable-events-and-functions
