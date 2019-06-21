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

if rawget(_G, "bucket") and bucket.register_liquid then
	-- source, flowing, itemname, inventory image, name, groups, force_renew
	bucket.register_liquid(
		"slimenodes:slime_liquid_cyan",
		"slimenodes:slime_liquid_cyan",
		"slimenodes:bucket_slime_liquid_cyan",
		"slimenodes_bucket_slime_liquid_cyan.png",
		"Liquid Cyan Slime Bucket"
	)
	bucket.register_liquid(
		"slimenodes:slime_solid_cyan",
		"slimenodes:slime_solid_cyan",
		"slimenodes:bucket_slime_solid_cyan",
		"slimenodes_bucket_slime_solid_cyan.png",
		"Solid Cyan Slime Bucket"
	)

	bucket.register_liquid(
		"slimenodes:slime_liquid_green",
		"slimenodes:slime_liquid_green",
		"slimenodes:bucket_slime_liquid_green",
		"slimenodes_bucket_slime_liquid_green.png",
		"Liquid Green Slime Bucket"
	)
	bucket.register_liquid(
		"slimenodes:slime_solid_green",
		"slimenodes:slime_solid_green",
		"slimenodes:bucket_slime_solid_green",
		"slimenodes_bucket_slime_solid_green.png",
		"Solid Green Slime Bucket"
	)

	bucket.register_liquid(
		"slimenodes:slime_liquid_orange",
		"slimenodes:slime_liquid_orange",
		"slimenodes:bucket_slime_liquid_orange",
		"slimenodes_bucket_slime_liquid_orange.png",
		"Liquid Orange Slime Bucket"
	)
	bucket.register_liquid(
		"slimenodes:slime_solid_orange",
		"slimenodes:slime_solid_orange",
		"slimenodes:bucket_slime_solid_orange",
		"slimenodes_bucket_slime_solid_orange.png",
		"Solid Orange Slime Bucket"
	)

	bucket.register_liquid(
		"slimenodes:slime_liquid_violet",
		"slimenodes:slime_liquid_violet",
		"slimenodes:bucket_slime_liquid_violet",
		"slimenodes_bucket_slime_liquid_violet.png",
		"Liquid Violet Slime Bucket"
	)
	bucket.register_liquid(
		"slimenodes:slime_solid_violet",
		"slimenodes:slime_solid_violet",
		"slimenodes:bucket_slime_solid_violet",
		"slimenodes_bucket_slime_solid_violet.png",
		"Solid Violet Slime Bucket"
	)

	-- minetest.register_craft({
		-- type = "fuel",
		-- recipe = "bucket:bucket_lava",
		-- burntime = 60,
		-- replacements = {{"bucket:bucket_lava", "bucket:bucket_empty"}},
	-- })

end
