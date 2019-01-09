# slimenodes
(minetest mod)\
Make bouncy solid slime and non-flowing liquid slime in minetest!

## Changes in poikilos fork
* added physics
  * solid is bouncy
  * all bouncy slime nodes stop fall damage (-100%; not sure how with liquid slime)
  * liquid is liquid-like
* made buckets for all types so collectors are not needed and storage is nerfed by 1 per inventory slot
* made recipes for all types (only if you have meseconds installed, since uses glue)
* made all liquid blocks behave like each other and all solid blocks behave like each other (though levels differ)
* changed sounds so liquid and solid each use a different one of the dug sounds, but this doesn't seem to work unless using slime collectors
* slime collectors cannot be crafted since holding stacks of slime would allow overpowered griefing (they can still be given administratively, but in multiplayer they should only be used for cleanup so they aren't traded or otherwise abused later)


## Authors
* [original version](https://forum.minetest.net/viewtopic.php?t=10423): Wuzzy
* sound: Wuzzy
* full bucket graphics: poikilos (Jake Gustafson), based on empty bucket by ElementW (CC BY-SA 3.0)
* all other graphics: Wuzzy


## License
code: see included [license.txt](https://github.com/poikilos/slimenodes/blob/master/license.txt)
media: [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/) poikilos and ElementW
