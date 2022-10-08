-- Welcome to roblox lua dictioanry documentation

-- Table
catDetails = {
	[1] = "Black",
	[2] = "Small",
	[3] = "Jenny",
}

-- Dictionary
catDetails2 = {
	["Fur Color"] = "Black",
	["Size"] = "Small",
	["Name"] = "Jenny"
}

print(catDetails2["Fur Color"])
print(catDetails2["Name"])

catDetails2["Breed"] = "Unknown"

print(catDetails2)

-- nil removes the value
catDetails2["Breed"] = nil

print(catDetails2)

-- To get the index
print(#catDetails)
-- Its going to print 0 because it doesnt have the numbers 
print(#catDetails2)
