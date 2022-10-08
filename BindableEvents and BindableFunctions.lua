--[[
READ ME !!!

Make 2 scripts in ServerScriptsService 
One call it Trigger and paste the script
and Another one called BindableTest
Then add a BindableEvent and BindableEvent and rename them by pressing f2 BindableEvent and BindableEvent

Credit : Tab for documenting
]]

------------------------------------------------------------------------------------------------------

-- BindableTest Script :
-- Function
local function EventHappned(Message)
	print("Message: "..Message)
end

local function FunctionHappened()
	print("Function was triggered! ")
	return math.random(1,20)
end
-- Finding rhe bindable event once this is triggered its going to be run
game.ReplicatedStorage.BindableEvent.Event:Connect(EventHappned)
game.ReplicatedStorage.BindableFunction.OnInvoke = FunctionHappened

--[[
Note : They are used to communicate on the same level client to client or server to server.
Remote events or functions are use to communite bettwen Server to Client or Client to server.
]]


------------------------------------------------------------------------------------------------------

--Trigger Script :

wait(6)
-- Invoking the BindableFunction
local x = game.ReplicatedStorage.BindableFunction:Invoke()
-- Bindable Event
game.ReplicatedStorage.BindableEvent:Fire("This is really cool !")

print("Random returned number: "..x)
