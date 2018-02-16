# slimenodes
Make bouncy solid slime and non-flowing liquid slime in minetest!\
Based on Wuzzy's slimenodes\
License:\
code is LGPL 3.0\
media is CC-BY-SA 3.0


## Main Features
* Has two types of slime: liquid and solid


## Changes in expertmm fork
* made recipes for all types (only if you have meseconds installed, since uses glue)
* made buckets for all types so collectors are not needed and storage is nerfed by 1 per inventory slot
* added physics
  * solid is bouncy
  * stops fall damage (-100%)
  * liquid is liquid-like
* made behavior uniform for all blocks other than levels
* changed sounds so liquid and solid each use a different one of the dug sounds, but this doesn't seem to work unless using slime collectors


## Known Issues
~=low-priority
* (~) slime collectors are still not craftable (may be left that way since multiplayer could use some limitation on storage--see above)


## Authors
* sound: Wuzzy
* bucket graphics: expertmm (Jake Gustafson)
* all other graphics: Wuzzy
