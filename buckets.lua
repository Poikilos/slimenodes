-- Minetest 0.4 mod: slime bucket
-- See README.txt for licensing and other information.

-- minetest.register_alias("bucket_slime_solid_cyan", "slimenodes:bucket_slime_solid_cyan")
-- minetest.register_alias("bucket_slime_solid_green", "slimenodes:bucket_slime_solid_green")
-- minetest.register_alias("bucket_slime_solid_orange", "slimenodes:bucket_slime_solid_orange")
-- minetest.register_alias("bucket_slime_solid_violet", "slimenodes:bucket_slime_solid_violet")

-- Register a new liquid
--    source = name of the source node
--    flowing = name of the flowing node
--    itemname = name of the new bucket item (or nil if liquid is not takeable)
--    inventory_image = texture of the new bucket item (ignored if itemname == nil)
--    name = text description of the bucket item
--    groups = (optional) groups of the bucket item, for example {water_bucket = 1}
--    force_renew = (optional) bool. Force the liquid source to renew if it has a
--                  source neighbour, even if defined as 'liquid_renewable = false'.
--                  Needed to avoid creating holes in sloping rivers.
-- This function can be called from any mod (that depends on bucket).
-- - OldCoder (Bucket_Game)


-- craftitems.lua defines slimenodesColorNames
if rawget(_G, "bucket") and bucket.register_bucket_hash then
	for index = 1, #slimenodesColorNames do
		local descPart = slimenodesColorNames[index]
		local namePart = descPart:lower()
		local liquid_bh = {}
		liquid_bh.bucket_node = "slimenodes:bucket_slime_liquid_" .. namePart
		liquid_bh.desc = "Liquid " .. descPart .. " Slime Bucket"
		liquid_bh.source_node = "slimenodes:slime_liquid_" .. namePart
		liquid_bh.flowing_node = "slimenodes:slime_liquid_" .. namePart -- .. "_slope"
		liquid_bh.force_renew = false
		-- groups =  -- TODO?
		-- liquid_bh.inventory_image =  "slimenodes_block_liquid_" .. namePart .. ".png"
		liquid_bh.invsource_image =  "slimenodes_block_liquid_" .. namePart .. ".png"
		bucket.register_bucket_hash(liquid_bh)
		-- rawget(_G, "ocutil") and bucket.register_node_bucketable then
		--ocutil.register_node_bucketable ("slimenodes:bucket_slime_solid_" .. namePart, {
			--description = "Solid " .. descPart .. " Slime Bucket" ,
			--bucket_base = "slimenodes:slime_solid_" .. namePart ,
			--tiles = {"slimenodes_block_solid_" .. namePart .. ".png"} ,
			--groups = {fall_damage_add_percent=-100, disable_jump=1, puts_out_fire=1, cools_lava=1, liquid=3, slimey=3} , -- and levels? see init.lua
			--sounds = {
				--dug = {name="slimenodes_dig", gain=0.6},
				--place = {name="slimenodes_place", gain=0.6},
			--},
		--})
		local solid_bh = {}
		solid_bh.bucket_node = "slimenodes:bucket_slime_solid_" .. namePart
		solid_bh.desc = "Solid " .. descPart .. " Slime Bucket"
		solid_bh.source_node = "slimenodes:slime_solid_" .. namePart
		solid_bh.flowing_node = "slimenodes:slime_solid_" .. namePart -- .. "_slope"
		solid_bh.force_renew = false
		-- groups =  -- TODO?
		-- solid_bh.inventory_image = "slimenodes_block_solid_" .. namePart .. ".png"
		solid_bh.invsource_image = "slimenodes_block_solid_" .. namePart .. ".png"
		bucket.register_bucket_hash(solid_bh)
	end
elseif rawget(_G, "bucket") and bucket.register_liquid then
	-- source, flowing, itemname, inventory image, name, groups, force_renew
	for index = 1, #slimenodesColorNames do
		local descPart = slimenodesColorNames[index]
		local namePart = descPart:lower()
		bucket.register_liquid(
			"slimenodes:slime_liquid_" .. namePart,
			"slimenodes:slime_liquid_" .. namePart,
			"slimenodes:bucket_slime_liquid_" .. namePart,
			"slimenodes_bucket_slime_liquid_" .. namePart .. ".png",
			"Liquid "..descPart.." Slime Bucket"
		)
		bucket.register_liquid(
			"slimenodes:slime_solid_" .. namePart,
			"slimenodes:slime_solid_" .. namePart,
			"slimenodes:bucket_slime_solid_" .. namePart,
			"slimenodes_bucket_slime_solid_" .. namePart .. ".png",
			"Solid "..descPart.." Slime Bucket"
		)
	end
end
