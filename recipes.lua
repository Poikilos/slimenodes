minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "slimenodes:bucket_slime_solid_cyan",
	recipe = "slimenodes:bucket_slime_liquid_cyan"
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "slimenodes:bucket_slime_solid_green",
	recipe = "slimenodes:bucket_slime_liquid_green"
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "slimenodes:bucket_slime_solid_orange",
	recipe = "slimenodes:bucket_slime_liquid_orange"
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "slimenodes:bucket_slime_solid_violet",
	recipe = "slimenodes:bucket_slime_liquid_violet"
})

local mesecons_materials = minetest.get_modpath("mesecons_materials")
local technic = minetest.get_modpath("technic")

local glue_fullname = nil

if mesecons_materials then
	glue_fullname = "mesecons_materials:glue"
elseif technic then
	glue_fullname = "technic:glue"
end
if glue_fullname then
	minetest.register_craft({
		type = "shapeless",
		output = "slimenodes:bucket_slime_liquid_cyan",
		recipe = {"bucket:bucket_water", glue_fullname, "dye:cyan"},
	})
	minetest.register_craft({
		type = "shapeless",
		output = "slimenodes:bucket_slime_liquid_green",
		recipe = {"bucket:bucket_water", glue_fullname, "dye:green"},
	})
	minetest.register_craft({
		type = "shapeless",
		output = "slimenodes:bucket_slime_liquid_orange",
		recipe = {"bucket:bucket_water", glue_fullname, "dye:orange"},
	})
	minetest.register_craft({
		type = "shapeless",
		output = "slimenodes:bucket_slime_liquid_violet",
		recipe = {"bucket:bucket_water", glue_fullname, "dye:violet"},
	})
end


