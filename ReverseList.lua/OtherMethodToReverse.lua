-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Standard Optimal Solution:
local function reverse(list)
  for i = 1, #list / 2 do
    list[i], list[#list - i + 1] = list[#list - i + 1], list[i]
  end
  return list
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Each iteration, this swaps the value list[i] with the value on the opposite end of the list
If you don't know the syntax on the third line, it just swaps their values by simultaneously setting them to each other. This syntax is part of tuple syntax (see my tuples lesson pinned in scripting-help for more), but tuple syntax isn't necessary to complete this solution. The third line is equivalent to
local temp = list[i]
list[i] = list[#list - i + 1] -- Get the value on the other side of the list...
list[#list - i + 1] = temp -- ... and switch them!
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Alternate Solution #1
local function reverse(list)
  for i = 2, #list do
    table.insert(list, 1, list[i]) -- Put each element behind the first...
    table.remove(list, i + 1) -- And then remove the original!
  end
  return list
end

(Solution based on WCKD's method - less optimal because both table.insert and table.remove shift the entire list each time they're called)
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Alternate Solution #2:
local function reverse(list)
  local reversedCopy = {}
  for i, v in ipairs(list) do -- Just put them in the new list backwards
    reversedCopy[#list - i + 1] = v
  end
  for i, _ in ipairs(list) do
    list[i] = reversedCopy[i] -- You must change the original list as per instructions
  end
  return list
end

(Suboptimal because it loops through the entire list twice. The optimal solution only loops through half the list.)
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
