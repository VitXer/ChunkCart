## check_nearby_dispensers.mcfunction
# Checks a 3x3x3 cube (-1..1 in x,y,z) around the executor for any dispenser
# If any dispenser is found, tag the executor `chunkloaded`.

execute if block ~-1 ~-1 ~-1 minecraft:dispenser run tag @s add chunkloaded
execute if block ~-1 ~-1 ~ minecraft:dispenser run tag @s add chunkloaded
execute if block ~-1 ~-1 ~1 minecraft:dispenser run tag @s add chunkloaded

execute if block ~-1 ~ ~-1 minecraft:dispenser run tag @s add chunkloaded
execute if block ~-1 ~ ~ minecraft:dispenser run tag @s add chunkloaded
execute if block ~-1 ~ ~1 minecraft:dispenser run tag @s add chunkloaded

execute if block ~-1 ~1 ~-1 minecraft:dispenser run tag @s add chunkloaded
execute if block ~-1 ~1 ~ minecraft:dispenser run tag @s add chunkloaded
execute if block ~-1 ~1 ~1 minecraft:dispenser run tag @s add chunkloaded

execute if block ~ ~-1 ~-1 minecraft:dispenser run tag @s add chunkloaded
execute if block ~ ~-1 ~ minecraft:dispenser run tag @s add chunkloaded
execute if block ~ ~-1 ~1 minecraft:dispenser run tag @s add chunkloaded

execute if block ~ ~ ~-1 minecraft:dispenser run tag @s add chunkloaded
execute if block ~ ~ ~ minecraft:dispenser run tag @s add chunkloaded
execute if block ~ ~ ~1 minecraft:dispenser run tag @s add chunkloaded

execute if block ~ ~1 ~-1 minecraft:dispenser run tag @s add chunkloaded
execute if block ~ ~1 ~ minecraft:dispenser run tag @s add chunkloaded
execute if block ~ ~1 ~1 minecraft:dispenser run tag @s add chunkloaded

execute if block ~1 ~-1 ~-1 minecraft:dispenser run tag @s add chunkloaded
execute if block ~1 ~-1 ~ minecraft:dispenser run tag @s add chunkloaded
execute if block ~1 ~-1 ~1 minecraft:dispenser run tag @s add chunkloaded

execute if block ~1 ~ ~-1 minecraft:dispenser run tag @s add chunkloaded
execute if block ~1 ~ ~ minecraft:dispenser run tag @s add chunkloaded
execute if block ~1 ~ ~1 minecraft:dispenser run tag @s add chunkloaded

execute if block ~1 ~1 ~-1 minecraft:dispenser run tag @s add chunkloaded
execute if block ~1 ~1 ~ minecraft:dispenser run tag @s add chunkloaded
execute if block ~1 ~1 ~1 minecraft:dispenser run tag @s add chunkloaded
