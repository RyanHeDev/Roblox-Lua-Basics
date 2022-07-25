--Calling a function:

local function addNumbers()
	print("Function called!")
end

addNumbers()

--Function Parameters

local function addNumbers(num1, num2)
	local result = num1 + num2
	print(num1 .. " + " .. num2 .. " = " .. result)
end

addNumbers(2, 3)
addNumbers(4, 0.5)
addNumbers(1000, 500)

-----

--Returning Values

local function addNumbers(num1, num2)
	local result = num1 + num2
	return result
end

-- Call the function and store the returned value in variables
local result1 = addNumbers(2, 3)
print(result1)
local result2 = addNumbers(1000, 1000)
print(result2)

-----



--Other functions techniques

delay(2, function(exactTimeElapsed)
	print(exactTimeElapsed)
end)

-- Simple Calculator lua

local function simplecalculator(num1, num2)
	local sum = num1 + num2
	local difference = num1 - num2
	local mul = num1*num2
	local div = num1/num2
	return sum, difference
end

local sum, difference = simplecalculator(2, 3)
print(sum)
print(difference)
local mul, div = simplecalculator(10, 2)
print(mul)
print(div)

-- player add

local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
	print(player.Name .. " joined the game!")
end)

----

-- Other function techniques

local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
-- Require module
local MathModule = require(ReplicatedStorage:WaitForChild("MathModule"))
 
local sum = MathModule.addNumbers(2, 3)
print(sum)
local difference = MathModule.subtractNumbers(2, 3)
print(difference)

----

-- Another way to count

local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
-- Require module
local MathModule = require(ReplicatedStorage:WaitForChild("MathModule"))
 
local sum = MathModule.addNumbers(2, 3)
print(sum)
local difference = MathModule.subtractNumbers(2, 3)
print(difference)
