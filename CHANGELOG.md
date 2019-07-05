# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a
Changelog](https://keepachangelog.com/en/1.0.0/).

## [git] - 2019-07-02
(poikilos)
### Added
- Add craftitems (8 Slime + Empty Bucket = 1 Liquid Slime Bucket).
- Use high-res bucket image generation if available (from Bucket_Game).

### Changed
- Rename "slimenodes_slime_solid_*.png" to
  "slimenodes_block_solid_*.png".
- Put everything in loops to make code more maintainable (less
  redundant).
- Make slime bucket cost more (7) glue to craft.

## [git] - 2018-02-16
(poikilos)
### Added
- Add physics.
  - Solid is bouncy.
  - All bouncy slime nodes stop fall damage (-100%; not sure how with
    liquid slime--engine ignores damage reduction for liquid at high
    speeds).
  - Liquid is liquid-like.
- Make buckets for all types so collectors are not needed (and so
  storage is nerfed to one per inventory slot).
- Make recipes for all types (only if you have `mesecons_materials:glue`
  or `technic:glue` since the recipe requires glue).

### Changed
- Make all liquid blocks behave like each other and all solid blocks
  behave like each other (though levels differ).
- Change sounds so liquid and solid each use a different one of the dug
  sounds. This doesn't seem to work unless using slime collectors.
- Slime collectors cannot be crafted since holding stacks of slime would
  allow overpowered griefing. They can still be given administratively,
  but in multiplayer they should only be used for cleanup so they aren't
  traded or otherwise abused later.
