
-- craftitems.lua defines slimenodesColorNames
for index = 1, #slimenodesColorNames do
	local descPart = slimenodesColorNames[index]
	local namePart = descPart:lower()
	minetest.register_craft({
		type = "cooking",
		cooktime = 10,
		output = "slimenodes:bucket_slime_solid_" .. namePart,
		recipe = "slimenodes:bucket_slime_liquid_" .. namePart
	})
end

local mesecons_materials = minetest.get_modpath("mesecons_materials")
local technic = minetest.get_modpath("technic")

local glue_s = nil

if mesecons_materials then
	glue_s = "mesecons_materials:glue"
elseif technic then
	glue_s = "technic:glue"
end
if glue_s then
	-- craftitems.lua defines slimenodesColorNames
	for index = 1, #slimenodesColorNames do
		local descPart = slimenodesColorNames[index]
		local namePart = descPart:lower()
		local thisDye = "dye:" .. namePart
		if minetest.registered_items[thisDye] then
			minetest.register_craft({
				type = "shapeless",
				output = "slimenodes:bucket_slime_liquid_" .. namePart,
				recipe = {
					glue_s, glue_s, glue_s,
					glue_s, thisDye, glue_s,
					glue_s, "bucket:bucket_water", glue_s,
				},
			})
		end
	end
end

for index = 1, #slimenodesColorNames do
	local descPart = slimenodesColorNames[index]
	local namePart = descPart:lower()
	local frag = "slimenodes:slime_" .. namePart
	local bucketName = "slimenodes:bucket_slime_liquid_" .. namePart
	minetest.register_craft({
		type = "shapeless",
		output = bucketName,
		recipe = {
			frag, frag, frag,
			frag, frag, frag,
			frag, "bucket:bucket_empty", frag,
		},
	})
	if technic and technic.register_separating_recipe then
		technic.register_separating_recipe({
			input = {bucketName.." 1"},
			output = {frag..' 8', "bucket:bucket_empty 1"},
		})
	else
		minetest.register_craft({
			recipe = {
				{bucketName},
			},
			output = frag..' 8',
		})
	end
end
