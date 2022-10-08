--[[
Instructions: 
Make a moduleScript into ReplicatedStorage and call it CarModule and make 
a script into ServerScriptService
Credit : Tab
]]--

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ReplicatedStorage moduleScript CarModule
--[[
local module = {
	["Sword"] = 100;
	["Gun"] = 1000;
	["Car"] = 10000;
}
]]--

local module = {}
-- Car Speed function
function module.Speed()
	wait(2)
	print("Car speed is 500 Km/h")
end

function module.CarDoor()
	print("Door Opened")
	wait(2)
	print("Door Closed")
end

return module
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ServerScriptService Script :
-- Requiring the module
local moduleScript = require(game.ReplicatedStorage.CarModule)

moduleScript.Speed()
moduleScript.CarDoor()
--[[
-- Car Price
print(moduleScript.Car)
]]
