
local presidents = {
    ["John F. Kennedy"] = 46,
    ["James A. Garfield"] = 49,
    ["James K. Polk"] = 53,
    ["Abraham Lincoln"] = 56,
    ["Theodore Roosevelt"] = 60
}

local smallestValue = math.huge 
local smallestKey = math.huge

for key, value in pairs(presidents) do
    if value < smallestValue then
        smallestKey = key
        smallestValue = value
    end
end



if smallestKey then
    print("The Youngest President name: "..smallestKey.."His age: "..smallestValue)
end
