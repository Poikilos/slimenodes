-- Boilerplate to support localized strings if intllib mod is installed.
local S
if minetest.get_modpath("intllib") then
	S = intllib.Getter()
else
	S = function(s) return s end
end

minetest.register_node("slimenodes:slime_liquid_cyan", {
	description = S("Cyan liquid slime"),
	inventory_image = minetest.inventorycube("slimenodes_slime_liquid_cyan.png"),
	drawtype = "liquid",
	tiles = { "slimenodes_slime_liquid_cyan.png" },
	special_tiles = {
		{
			name = "slimenodes_slime_liquid_cyan.png",
			backface_culling = false
		},
	},
	alpha = 120,
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = true,
	buildable_to = false,
	drop = "slimenodes:slime_liquid_cyan",
	liquidtype = "source",
	liquid_alternative_flowing = "slimenodes:slime_liquid_cyan",
	liquid_alternative_source = "slimenodes:slime_liquid_cyan",
	liquid_viscosity = 1,
	liquid_range = 0,
	liquid_renewable = false,
	liquids_pointable = true,
	drowning = 0,
	post_effect_color = {a=16, r=0, g=255, b=255},
	groups = {fall_damage_add_percent=-100, disable_jump=1, puts_out_fire=1, cools_lava=1, liquid=3, slimey=3},
	sounds = {
		dug = {name="slimenodes_dig", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
	}
})

minetest.register_node("slimenodes:slime_liquid_green", {
	description = S("Green liquid slime"),
	inventory_image = minetest.inventorycube("slimenodes_slime_liquid_green.png"),
	drawtype = "liquid",
	tiles = { "slimenodes_slime_liquid_green.png" },
	special_tiles = { { name = "slimenodes_slime_liquid_green.png", backface_culling = false } },
	alpha = 170,
	sunlight_propagates = false,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = true,
	buildable_to = false,
	drop = "slimenodes:slime_liquid_green",
	liquidtype = "source",
	liquid_alternative_flowing = "slimenodes:slime_liquid_green",
	liquid_alternative_source = "slimenodes:slime_liquid_green",
	liquid_viscosity = 2,
	liquid_range = 0,
	liquid_renewable = false,
	liquids_pointable = true,
	drowning = 0,
	post_effect_color = {a=64, r=100, g=200, b=100},
	groups = {fall_damage_add_percent=-100, disable_jump=1, puts_out_fire=1, cools_lava=1, liquid=3, slimey=3, level=1},
	sounds = {
		dug = {name="slimenodes_dig", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
	}
})

minetest.register_node("slimenodes:slime_liquid_orange", {
	description = S("Orange liquid slime"),
	inventory_image = minetest.inventorycube("slimenodes_slime_liquid_orange.png"),
	drawtype = "liquid",
	tiles = { "slimenodes_slime_liquid_orange.png" },
	special_tiles = { { name = "slimenodes_slime_liquid_orange.png", backface_culling = false } },
	alpha = 200,
	sunlight_propagates = false,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = true,
	buildable_to = false,
	drop = "slimenodes:slime_liquid_orange",
	liquidtype = "source",
	liquid_alternative_flowing = "slimenodes:slime_liquid_orange",
	liquid_alternative_source = "slimenodes:slime_liquid_orange",
	liquid_viscosity = 4,
	liquid_range = 0,
	liquid_renewable = false,
	liquids_pointable = true,
	drowning = 0,
	post_effect_color = {a=96, r=200, g=100, b=0},
	groups = {fall_damage_add_percent=-100, disable_jump=1, puts_out_fire=1, cools_lava=1, liquid=3, slimey=3, level=2},
	sounds = {
		dug = {name="slimenodes_dig", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
	}
})

minetest.register_node("slimenodes:slime_liquid_violet", {
	description = S("Violet liquid slime"),
	inventory_image = minetest.inventorycube("slimenodes_slime_liquid_violet.png"),
	drawtype = "liquid",
	tiles = { "slimenodes_slime_liquid_violet.png" },
	special_tiles = { { name = "slimenodes_slime_liquid_violet.png", backface_culling = false } },
	alpha = 220,
	sunlight_propagates = false,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = true,
	buildable_to = false,
	drop = "slimenodes:slime_liquid_violet",
	liquidtype = "source",
	liquid_alternative_flowing = "slimenodes:slime_liquid_violet",
	liquid_alternative_source = "slimenodes:slime_liquid_violet",
	liquid_viscosity = 6,
	liquid_range = 0,
	liquid_renewable = false,
	liquids_pointable = true,
	drowning = 0,
	post_effect_color = {a=128, r=50, g=0, b=200},
	groups = {fall_damage_add_percent=-100, disable_jump=1, puts_out_fire=1, cools_lava=1, liquid=3, slimey=3, level=3},
	sounds = {
		dug = {name="slimenodes_dig", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
	}
})

minetest.register_node("slimenodes:slime_solid_cyan", {
	description = S("Cyan solid slime"),
	tiles = { "slimenodes_slime_solid_cyan.png" },
	walkable = true,
	groups = {bouncy=90, fall_damage_add_percent=-100, slimey=3, level=1},
	sounds = {
		dug = {name="slimenodes_dug", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
		footstep = {name="slimenodes_step", gain=0.2},
	}
})

minetest.register_node("slimenodes:slime_solid_green", {
	description = S("Green solid slime"),
	tiles = { "slimenodes_slime_solid_green.png" },
	walkable = true,
	groups = {bouncy=90, fall_damage_add_percent=-100, slimey=3, level=2},
	sounds = {
		dug = {name="slimenodes_dug", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
		footstep = {name="slimenodes_step", gain=0.3},
	}
})

minetest.register_node("slimenodes:slime_solid_orange", {
	description = S("Orange solid slime"),
	tiles = { "slimenodes_slime_solid_orange.png" },
	walkable = true,
	groups = {bouncy=90, fall_damage_add_percent=-100, slimey=3, level=2},
	sounds = {
		dug = {name="slimenodes_dug", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
		footstep = {name="slimenodes_step", gain=0.35},
	}
})

minetest.register_node("slimenodes:slime_solid_violet", {
	description = S("Violet solid slime"),
	tiles = { "slimenodes_slime_solid_violet.png" },
	walkable = true,
	groups = {bouncy=90, fall_damage_add_percent=-30, slimey=3, level=3},
	sounds = {
		dug = {name="slimenodes_dug", gain=0.6},
		place = {name="slimenodes_place", gain=0.6},
		footstep = {name="slimenodes_step", gain=0.4},
	}
})


minetest.register_tool("slimenodes:collector_lvl1", {
	description = S("Slime collector level 1"),
	inventory_image = "slimenodes_collector_lvl1.png",
	liquids_pointable = true,
	tool_capabilities = {
		full_punch_interval = 1,
		groupcaps = {
			slimey = { times = { [3] = 2 }, uses = 0, maxlevel = 1 }
		}
	}
})

minetest.register_tool("slimenodes:collector_lvl2", {
	description = S("Slime collector level 2"),
	inventory_image = "slimenodes_collector_lvl2.png",
	liquids_pointable = true,
	tool_capabilities = {
		full_punch_interval = 1,
		groupcaps = {
			slimey = { times = { [2] = 3, [3] = 1.5 }, uses = 0, maxlevel = 2 }
		}
	}
})

minetest.register_tool("slimenodes:collector_lvl3", {
	description = S("Slime collector level 3"),
	inventory_image = "slimenodes_collector_lvl3.png",
	liquids_pointable = true,
	tool_capabilities = {
		full_punch_interval = 1,
		groupcaps = {
			slimey = { times = { [1] = 4, [2] = 1.5, [3] = 0.75 }, uses = 0, maxlevel = 3 }
		}
	}
})

minetest.register_tool("slimenodes:collector_lvl4", {
	description = S("Slime collector level 4"),
	inventory_image = "slimenodes_collector_lvl4.png",
	liquids_pointable = true,
	tool_capabilities = {
		full_punch_interval = 0.9,
		groupcaps = {
			slimey = { times = { [1] = 1, [2] = 0.5, [3] = 0.1 }, uses = 0, maxlevel = 4 }
		}
	}
})

dofile(minetest.get_modpath("slimenodes").."/buckets.lua")
dofile(minetest.get_modpath("slimenodes").."/recipes.lua")

