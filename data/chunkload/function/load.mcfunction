# load.mcfunction
# This function runs once when the datapack loads (via minecraft:load tag).
# It currently runs your tick function once to ensure initial state is applied.
scoreboard objectives add chunkload_count dummy "Loaded Chest Minecarts"
function chunkload:tick
tellraw @a ["",{"text":"[ChunkCart] ","color":"gold"},{"text":"Datapack loaded!","color":"yellow"}]