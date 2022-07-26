local t = {"Learn",2,"Practicing"}

local function reverse()
    for i = 1, math.floor(#t/2) do
        local j = #t - i + 1
        t[i], t[j] = t[j], t[i]
        print(t)
        break
    end
end

reverse()

--[[
It loops up to half of the table and for each position in the first half, swaps it with the corresponding position in the second half.
If t is a table with five elements, it would loop over i = 1, 2, meaning it will swap t[1] with t[5] and t[2] with t[4] and that’s all you have to do. (t[3] doesn’t change since it’s the middle value here) Also works with evenly sized arrays.
]]--
