# ChunkCart

Chest-minecart chunkloading datapack

Description
-----------
This datapack keeps chest minecarts loaded so they can travel alone in logistics networks. It forceloads the chunks where chest minecarts are located. It shouldn't forceload any naturally generated minecarts.

Useful in-game commands
-----------------------
- Reload datapacks: `/reload`
- Enable sidebar counter: `/function chunkload:enable_counter`
- Disable sidebar counter: `/function chunkload:disable_counter`
- Check currently forceloaded chunks: `/forceload query`
- View scoreboard objective: `/scoreboard objectives list` and `/scoreboard players list loaded` (or check the sidebar when enabled)

Notes & caveats
---------------
- This datapack clears all forced chunks each tick (`forceload remove all`) and rebuilds the set from qualifying minecarts. If you use other datapacks or manual forceloads, they will be removed every tick. Be careful if you rely on other forceloads.
- The datapack uses tags `chunkloaded` and `chunkloaded_exception` on chest minecarts to manage which carts are considered forceloading each tick. Tags are transient and recalculated each tick.
- The proximity threshold for automatic tagging is 8 blocks.
- The dispenser detection area is the 3×3×3 cube centered on the minecart (one block in each direction).
- Performance: The datapack runs logic every tick and resets forceloads each tick. On very large numbers of chest minecarts this may become an overhead — test in your world and adapt if needed.

Credits
-------
Created by Haxardev.
