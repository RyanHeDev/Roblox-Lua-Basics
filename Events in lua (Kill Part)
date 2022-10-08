-- Varible for our Part called Lava
lavaPart = workspace.Lava

-- Declared an touched event 
lavaPart.Touched:Connect(function(hit)
	-- Its going to print what part touched the Lava part
	print(hit)
	-- Checking if the parent of the part is a character
	local character = hit.Parent
	-- if statement to check
	if character:IsA("Model") then
		character:BreakJoints()
	end
end)
