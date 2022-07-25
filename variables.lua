LETTERS   -- valid
a1        -- valid
var_name  -- valid
_test     -- valid
 
if        -- NOT valid
25th      -- NOT valid
  
The following keywords are reserved by Lua and cannot be used as variable or function names:

and
for
or
break
function
repeat
do
if
return
else
in
then
elseif
local
true
end
nil
until
false
not
while
        
        
x = 10
word = "Hello"
reference = workspace.Part
 
print(x)
print(word)
print(reference)
        
        
        
x = 10
print(x)
 
x = 1000
print(x)
        
        
        
a, b, c = 1, 2, 3
 
print(a)
print(b)
print(c)
        
x = 0  -- Global variable "x"
 
for i = 1, 5 do
	x = x + 1
	print("Global 'x' = " .. x)
end
 
print("Global 'x' = " .. x)
        
        
        
        
local x = 0  -- Local variable "x"
        
        
local x = 0  -- Local variable "x"
 
for i = 1, 5 do
	local x = 1  -- Different variable "x", local to this "for" loop
	print("Loop 'x' = " .. x)
end
 
print("Initial 'x' = " .. x)
