for index = 1, #slimenodesColorNames do
    descPart = slimenodesColorNames[index]
    namePart = descPart:lower()
    minetest.register_craftitem("slimenodes:slime_" .. namePart, {
	description = descPart .. " Slime",
	inventory_image = "slimenodes_drop_" .. namePart .. ".png",
	stack_max = 8,
    })
end
