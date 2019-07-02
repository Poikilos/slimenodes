-- Boilerplate to support localized strings if intllib mod is installed.
local S
if minetest.get_modpath("intllib") then
	S = intllib.Getter()
else
	S = function(s) return s end
end

slimenodesColorNames = { "Cyan", "Green", "Orange", "Violet" }
slimenodesParams = {}
slimenodesParams["cyan"] = {}
slimenodesParams["cyan"].alpha = 120
slimenodesParams["cyan"].liquid_viscosity = 1
slimenodesParams["cyan"].post_effect_color = {a=16, r=0, g=255, b=255}
slimenodesParams["green"] = {}
slimenodesParams["green"].alpha = 170
slimenodesParams["green"].liquid_viscosity = 2
slimenodesParams["green"].post_effect_color = {a=64, r=100, g=200, b=100}
slimenodesParams["orange"] = {}
slimenodesParams["orange"].alpha = 200
slimenodesParams["orange"].liquid_viscosity = 4
slimenodesParams["orange"].post_effect_color = {a=96, r=200, g=100, b=0}
slimenodesParams["violet"] = {}
slimenodesParams["violet"].alpha = 220
slimenodesParams["violet"].liquid_viscosity = 6
slimenodesParams["violet"].post_effect_color = {a=128, r=50, g=0, b=200}

if not deepcopy then
	-- See http://lua-users.org/wiki/CopyTable
	function deepcopy(orig)
		local orig_type = type(orig)
		local copy
		if orig_type == 'table' then
			copy = {}
			for orig_key, orig_value in next, orig, nil do
				copy[deepcopy(orig_key)] = deepcopy(orig_value)
			end
			setmetatable(copy, deepcopy(getmetatable(orig)))
		else -- number, string, boolean, etc
			copy = orig
		end
		return copy
	end
end

if not level1copy then
	-- See http://lua-users.org/wiki/CopyTable
	function level1copy(orig)
		local orig_type = type(orig)
		local copy
		if orig_type == 'table' then
			copy = {}
			for orig_key, orig_value in next, orig, nil do
				copy[orig_key] = orig_value
			end
		else -- number, string, boolean, etc
			copy = orig
		end
		return copy
	end
end

dofile(minetest.get_modpath("slimenodes").."/craftitems.lua")


-- craftitems.lua defines slimenodesColorNames
local slimeNodeLevel = 0
local slimenodesLiqDef = nil
for index = 1, #slimenodesColorNames do
	descPart = slimenodesColorNames[index]
	namePart = descPart:lower()
	local snLName = "slimenodes:slime_liquid_" .. namePart
	local snSName = "slimenodes:slime_solid_" .. namePart
	slimenodesLiqDef = {
		drawtype = "liquid",
		alpha = 120,
		sunlight_propagates = true,
		paramtype = "light",
		walkable = false,
		pointable = false,
		diggable = true,
		buildable_to = false,
		liquidtype = "source",
		liquid_viscosity = 1,
		liquid_range = 0,
		liquid_renewable = false,
		liquids_pointable = true,
		drowning = 0,
		sounds = {
			dug = {name="slimenodes_dig", gain=0.6},
			place = {name="slimenodes_place", gain=0.6},
		}
	}
	if nil then   -- rawget(_G, "default") and default.register_water then
		print("slimenodes is using default.register_water...")
		-- Liquid:
		local def = {
			alpha             = slimenodesLiqDef.alpha,
			basename          = "slimenodes:slime_liquid_" .. namePart,
			light             = -1             ,
			liquid_viscosity  = slimenodesLiqDef.liquid_viscosity,
			liquid_range      = slimenodesLiqDef.liquid_range,
			sounds            = slimenodesLiqDef.sounds,
			drowning          = slimenodesLiqDef.drowning,
		}
		if slimenodesParams[namePart]
				and slimenodesParams[namePart].post_effect_color then
			def.post_effect_color = slimenodesParams[namePart].post_effect_color
		else
			def.post_effect_color = nil
		end
		default.register_water(def)

		-- Solid:
		local def = {
			alpha             = slimenodesLiqDef.alpha,
			basename          = snSName,
			light             = -1             ,
			liquid_range      = 0,
			sounds            = slimenodesLiqDef.sounds,
		}
		if slimenodesParams[namePart].post_effect_color then
			def.post_effect_color = slimenodesParams[namePart].post_effect_color
		end
		default.register_water(def)
	else
		print("slimenodes is using register_node...")
		-- Liquid:
		-- -- why does this commented version of the code cause a block that
		-- -- tries to flow but has CONTENT_IGNORE error?
		--local def = slimenodesLiqDef
		--def.description = S("Liquid " .. descPart .. " Slime Block")
		--def.inventory_image = minetest.inventorycube(
			--"slimenodes_block_liquid_" .. namePart .. ".png"
		--)
		--def.tiles = { "slimenodes_block_liquid_" .. namePart .. ".png" }
		--def.special_tiles = {
			--{
				--name = "slimenodes_block_liquid_" .. namePart .. ".png",
				--backface_culling = false
			--},
		--}
		--def.drop = snLName
		---- liquid_alternative_flowing = "slimenodes:slime_liquid_" .. namePart .. "_slope"
		--liquid_alternative_flowing = snLName
		--liquid_alternative_source = snLName
		--if slimenodesParams[namePart].post_effect_color then
			--def.post_effect_color = slimenodesParams[namePart].post_effect_color
		--end
		--if slimenodesParams[namePart].alpha then
			--def.alpha = slimenodesParams[namePart].alpha
		--end
		--if slimenodesParams[namePart].liquid_viscosity then
			--def.liquid_viscosity = slimenodesParams[namePart].liquid_viscosity
		--end
		--def.groups = {fall_damage_add_percent=-100, disable_jump=1, puts_out_fire=1, cools_lava=1, liquid=3, slimey=3}
		--if slimeNodeLevel > 0 then
			--def.groups.level = slimeNodeLevel
		--end
		--minetest.register_node(snLName, def)
		minetest.register_node(snLName, {
			description = S("Liquid " .. descPart .. " Slime Block"),
			inventory_image = minetest.inventorycube("slimenodes_block_liquid_" .. namePart .. ".png"),
			drawtype = "liquid",
			tiles = { "slimenodes_block_liquid_" .. namePart .. ".png" },
			special_tiles = {
				{
					name = "slimenodes_block_liquid_" .. namePart .. ".png",
					backface_culling = false
				},
			},
			alpha = slimenodesParams[namePart].alpha or 120,
			sunlight_propagates = true,
			paramtype = "light",
			walkable = false,
			pointable = false,
			diggable = true,
			buildable_to = false,
			drop = snLName,
			liquidtype = "source",
			liquid_alternative_flowing = snLName,
			liquid_alternative_source = snLName,
			liquid_viscosity = slimenodesParams[namePart].liquid_viscosity or 1,
			liquid_range = 0,
			liquid_renewable = false,
			liquids_pointable = true,
			drowning = 0,
			post_effect_color = deepcopy(slimenodesParams[namePart].post_effect_color) or {a=16, r=128, g=128, b=128},
			groups = {fall_damage_add_percent=-100, disable_jump=1, puts_out_fire=1, cools_lava=1, liquid=3, slimey=3},
			sounds = {
				dug = {name="slimenodes_dig", gain=0.6},
				place = {name="slimenodes_place", gain=0.6},
			}
		})


		-- Solid:
		local solidGroups = {bouncy=90, fall_damage_add_percent=-100, slimey=3,}
		if slimeNodeLevel > 0 then
			solidGroups.level = slimeNodeLevel
		end

		minetest.register_node(snSName, {
			description = S("Solid " .. descPart .. " Slime Block"),
			tiles = { "slimenodes_block_solid_" .. namePart .. ".png" },
			walkable = true,
			groups = solidGroups,
			sounds = {
				dug = {name="slimenodes_dug", gain=0.6},
				place = {name="slimenodes_place", gain=0.6},
				footstep = {name="slimenodes_step", gain=0.2},
			}
		})

	end
	if slimeNodeLevel <= 3 then
		slimeNodeLevel = slimeNodeLevel + 1
	end
end

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

