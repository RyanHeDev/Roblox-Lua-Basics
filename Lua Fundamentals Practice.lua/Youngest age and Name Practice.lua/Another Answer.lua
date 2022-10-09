local function findYoungest(people)
  local smallestAge = math.huge -- The smallest age that was found so far
  local youngestPerson = nil -- The youngest person found so far
  for person, age in pairs(people) do
    if age < smallestAge then
      smallestAge = age
      youngestPerson = person
    end
  end
  return youngestPerson
end
