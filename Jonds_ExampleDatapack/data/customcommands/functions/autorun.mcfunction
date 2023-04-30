#This function sets up the basic commands of the world when it detects a new player. It can also be used to run all the time without any command blocks in the world!

execute as @a[tag=!SpawnBlocks] at @s run tp @s ~ ~20 ~ 0 20

#clears a spawn area
execute as @a[tag=!SpawnBlocks] at @s run fill ~-10 ~ ~-10 ~10 ~10 ~10 minecraft:air
execute as @a[tag=!SpawnBlocks] at @s run fill ~-10 ~-1 ~-10 ~10 ~-1 ~10 minecraft:iron_block

#sets up hopper clock
execute as @a[tag=!SpawnBlocks] at @s run setblock ~ ~ ~2 minecraft:hopper[facing=east]{Items:[{Slot:0b,id:"minecraft:stick",Count:1b}]}
execute as @a[tag=!SpawnBlocks] at @s run setblock ~1 ~ ~2 minecraft:hopper[facing=west]
execute as @a[tag=!SpawnBlocks] at @s run setblock ~-1 ~ ~2 minecraft:comparator[facing=east]
execute as @a[tag=!SpawnBlocks] at @s run setblock ~-2 ~ ~2 minecraft:command_block{Command:"/function customcommands:dialogues"}
execute as @a[tag=!SpawnBlocks] at @s run setblock ~-2 ~ ~1 minecraft:oak_wall_sign[facing=north]{Text4:'{"text":"spawn chunks."}',Text3: '{"text":"Put me in your"}',Text2: '{"text":"commands!"}',id: "minecraft:sign",Text1: '{"text":"I run dialogue"}'}

#Sets up example dialogue button
execute as @a[tag=!SpawnBlocks] at @s run setblock ~ ~ ~-2 minecraft:command_block{Command:"/scoreboard players set @p[distance=..5] DialogueTrigger 1"}
execute as @a[tag=!SpawnBlocks] at @s run setblock ~ ~ ~-1 minecraft:stone_button[facing=south,face=wall]
execute as @a[tag=!SpawnBlocks] at @s run setblock ~-1 ~ ~-2 minecraft:oak_sign[rotation=0]{Color: "black",Text4:'{"text":""}',Text3:'{"text":"dialogue!"}',Text2: '{"text":"your first"}', id: "minecraft:sign", Text1: '{"text":"Run me for"}'}

#Creates scoreboards
execute as @a[tag=!SpawnBlocks] run function customcommands:addobjectives

#goes into creative mode
execute as @a[tag=!SpawnBlocks] run gamemode creative @a[tag=!SpawnBlocks]

#tags player to not repeat
tag @a[tag=!SpawnBlocks] add SpawnBlocks
