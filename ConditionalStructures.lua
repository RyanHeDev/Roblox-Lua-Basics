Operator	Description	Example
==	Equal to	3 == 5  →  false
~=	Not equal to	3 ~= 5  →  true
>	Greater than	3 > 5  →  false
<	Less than	3 < 5  →  true
>=	Greater than or equal to	3 >= 5  →  false
<=	Less than or equal to	3 <= 5  →  true

--Conditional Tests
--if — then

if 2 + 3 == 5 then
	print("Two plus three is five")
end


local nilVariable  -- Variable is declared but has no value, so it's nil
local falseVariable = false  -- Variable is declared with value of false

if nilVariable ~= true then
	print(nilVariable)  -- Outputs "nil" since nil is not true
end

if falseVariable ~= true then
	print(falseVariable)  -- Outputs "false" since false is not true
end


--elseif — then

if 25 > 100 then
	print("25 is greater than 100")
elseif 25 > 50 then
	print("25 is greater than 50") 
elseif 25 > 10 then
	print("25 is greater than 10") 
end


--else

if 10 > 100 then
	print("10 is greater than 100")
elseif 10 > 25 then
	print("10 is greater than 25")
else
	print("10 is less than both 25 and 100")
end


--Conditional Loops
--while — do

-- Timer

local timeRemaining = 10

while timeRemaining > 0 do
	print("Seconds remaining: " .. timeRemaining)
	wait(1)
	timeRemaining = timeRemaining - 1	
end

print("Timer reached zero!")

----

--repeat — until

local currentGoblinCount = 18
 
-- Spawn goblins up to a maximum of 25 in the game
repeat
	currentGoblinCount = currentGoblinCount + 1
	print("Current goblin count: " .. currentGoblinCount)
until currentGoblinCount == 25
 
print("Goblins repopulated!")

----

--Using Logical Operators
--Multi-Condition Tests

local pasta = true
local tomatoSauce = true

if pasta == true and tomatoSauce == true then
	print("We have spaghetti dinner!")
else
	print("Something is missing...")
end

-- Another example

local pasta = false
local tomatoSauce = true
local garlicBread = true
 
if (pasta == true and tomatoSauce == true) or garlicBread == true then
	print("We have either spaghetti dinner OR garlic bread!")
else
	print("Something is missing...")
end


--Non-Truth Tests

----

local nilVariable  -- Variable is declared but has no value, so it's nil
local falseVariable = false  -- Variable is declared with value of false
 
if not nilVariable then
	print(nilVariable)  -- Outputs "nil" since nil is not true
end
 
if not falseVariable then
	print(falseVariable)  -- Outputs "false" since false is not true
end


----

local currentGoblinCount = 18
local playerLevel = 6
 
if not (currentGoblinCount > 25 or playerLevel < 5) then
	print("Spawn more goblins!")
end


