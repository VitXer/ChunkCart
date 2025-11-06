# Tick function to manage chunk-forceloading via chest_minecarts
# Counts how many minecarts are currently keeping chunks loaded, clears old forceloads,
# checks nearby dispensers, marks minecarts as chunkloaded when a player is close,
# then forces the chunks of the valid minecarts and updates a global counter.

# Reset per-entity "chunkload_count" scores (clear any leftover scores)
scoreboard players reset @e chunkload_count

# Initialize the global counter "loaded" in objective "chunkload_count" to 0
scoreboard players set loaded chunkload_count 0

# Count each minecart already tagged chunkloaded into the global counter
scoreboard players add @e[type=minecraft:chest_minecart,tag=chunkloaded] chunkload_count 1

# Clear all previously forced chunks — recalc from scratch each tick
forceload remove all

# Run a detailed check for minecarts that are not yet tagged as chunkloaded or exceptions
execute as @e[type=chest_minecart,tag=!chunkloaded,tag=!chunkloaded_exception] at @s run function chunkload:check_nearby_dispensers

# If a player is within 8 blocks of the minecart, immediately mark it as chunkloaded
execute as @e[type=chest_minecart,tag=!chunkloaded,tag=!chunkloaded_exception] at @s if entity @p[distance=..8] run tag @s add chunkloaded

# Any remaining unchecked minecarts become exceptions to prevent forcing their chunk this tick
execute as @e[type=chest_minecart,tag=!chunkloaded,tag=!chunkloaded_exception] run tag @s add chunkloaded_exception

# For each minecart tagged chunkloaded (but not exception), force-load the chunk it is currently in
execute as @e[type=chest_minecart,tag=chunkloaded] unless entity @s[tag=chunkloaded_exception] at @s run forceload add ~ ~ ~ ~

# Increment the global "loaded" counter for each successfully chunkloaded minecart (excluding exceptions)
execute as @e[type=chest_minecart,tag=chunkloaded] unless entity @s[tag=chunkloaded_exception] run scoreboard players add loaded chunkload_count 1