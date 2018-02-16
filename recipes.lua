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


if mesecons_materials then
	minetest.register_craft({
		type = "shapeless",
		output = "slimenodes:bucket_slime_liquid_cyan",
		recipe = {"bucket:bucket_water", "mesecons_materials:glue", "dye:cyan"},
	})
	minetest.register_craft({
		type = "shapeless",
		output = "slimenodes:bucket_slime_liquid_green",
		recipe = {"bucket:bucket_water", "mesecons_materials:glue", "dye:green"},
	})
	minetest.register_craft({
		type = "shapeless",
		output = "slimenodes:bucket_slime_liquid_orange",
		recipe = {"bucket:bucket_water", "mesecons_materials:glue", "dye:orange"},
	})
	minetest.register_craft({
		type = "shapeless",
		output = "slimenodes:bucket_slime_liquid_violet",
		recipe = {"bucket:bucket_water", "mesecons_materials:glue", "dye:violet"},
	})
end


