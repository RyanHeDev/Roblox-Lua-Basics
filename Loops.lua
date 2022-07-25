Loops
A loop lets you execute code multiple times. Each type of Lua loop repeats a block of code but in different ways.

Loop Types
for
The for loop lets you run a command or group of commands a set number of times. The basic syntax includes a control variable, a start value, an end value, and an optional increment value.

for
count

control
variable
=
1

start
value
,
10

end
value
,
1

increment
value
do
The following example loop starts at 1 and counts up until 5, printing the value of count (the control variable) on each iteration:

----
for count = 1, 5 do
	print(count)
end
----

If the optional increment value is included in the statement, a positive value will count up while a negative value will count down:
----
for count = 1, 10, 2 do
	print(count)
end
----

----
for count = 3, 0, -0.5 do
	print(count)
end
----


while
The while loop evaluates if a condition is true or false. If false, the loop ends and the code following it continues to execute. If true, the code between do and end executes and the true/false condition is reevaluated afterward.
    

----
local timeRemaining = 10
 
while timeRemaining > 0 do
	print("Seconds remaining: " .. timeRemaining)
	wait(1)
	timeRemaining = timeRemaining - 1	
end
 
print("Timer reached zero!")
 
----
 
--Timer open
    
local timeRemaining = 10
 
while timeRemaining > 0 do
	print("Seconds remaining: " .. timeRemaining)
	wait(1)
	timeRemaining = timeRemaining - 1	
end
 
print("Timer reached zero!")
    
    
--Timer closed
    
 -- random loop open
    
 while true do
	print("Looping...")
	wait(0.5)
end

-- random loop close
    
--Note : Always include a delay such as wait() inside an infinite loop, as omitting it can freeze the game.
    
repeat
A repeat loop repeats until a certain condition is met. Note that the code between repeat and until is executed at least once because the conditional test is performed afterward.

 ----
      
local currentGoblinCount = 18
 
-- Spawn goblins up to a maximum of 25 in the game
repeat
	currentGoblinCount = currentGoblinCount + 1
	print("Current goblin count: " .. currentGoblinCount)
until currentGoblinCount == 25
 
print("Goblins repopulated!")
----
      
Breaking Loops
If you’re running a loop that won’t typically end, such as an infinite while true do loop, you can force it to end with the break command so the script can continue running the code following it:

      
local secondsElapsed = 0
local timeout = 5
 
while true do
	print("Looping...")
	wait(1)
	secondsElapsed = secondsElapsed + 1
 
	if secondsElapsed == timeout then
		break
	end
end
 
print("Loop ended; moving on!")
