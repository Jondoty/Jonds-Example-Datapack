
#This command is common between all different dialogues, and will affect any DialogueTrigger score with a value greater than 1 (so all of them)
scoreboard players add @a[scores={DialogueTrigger=1..}] TalkTime 1



#this command just organizes between dialogues
#-----------------------------------------------------------------------------------------------------------------------------------------------------

#This is an example dialogue that will run in Minecraft when you spawn in.

tellraw @a[scores={DialogueTrigger=1,TalkTime=1}] {"text":"<...> Hello! Sorry to keep you waiting!"}
tellraw @a[scores={DialogueTrigger=1,TalkTime=8}] {"text":"<Jond> As you can see, you are able to run many commands within a dialogue!"}

tellraw @a[scores={DialogueTrigger=1,TalkTime=16}] {"text":"<Jond> Create particles!"}
execute as @a[scores={DialogueTrigger=1,TalkTime=16}] run particle cloud ~ ~ ~ 1 1 1 1 100

tellraw @a[scores={DialogueTrigger=1,TalkTime=22}] {"text":"<Jond> Play sounds!"}
execute as @a[scores={DialogueTrigger=1,TalkTime=22}] run playsound minecraft:entity.ender_dragon.death ambient @a ~ ~ ~ 1 1 1

tellraw @a[scores={DialogueTrigger=1,TalkTime=30}] {"text":"<Jond> Give an item!"}
execute as @a[scores={DialogueTrigger=1,TalkTime=30}] run give @a minecraft:diamond

tellraw @a[scores={DialogueTrigger=1,TalkTime=38}] {"text":"<Jond> Set or destroy blocks!"}
execute as @a[scores={DialogueTrigger=1,TalkTime=38}] at @s run fill ~10 ~5 ~10 ~-10 ~5 ~-10 diamond_block

tellraw @a[scores={DialogueTrigger=1,TalkTime=44}] {"text":"<Jond> Or teleport the player."}
execute as @a[scores={DialogueTrigger=1,TalkTime=44}] run effect give @a minecraft:resistance 10 5
execute as @a[scores={DialogueTrigger=1,TalkTime=44}] at @s run tp @a ~ ~10 ~

execute as @a[scores={DialogueTrigger=1,TalkTime=50}] at @s run fill ~25 ~-5 ~25 ~-25 ~5 ~-25 air replace minecraft:diamond_block

tellraw @a[scores={DialogueTrigger=1,TalkTime=52}] {"text":"<Jond> And to replay this dialogue, you can remove the tag with /tag @a remove Dialogue1"}

tag @a[scores={DialogueTrigger=1,TalkTime=52..}] add Dialogue1
scoreboard players set @a[scores={DialogueTrigger=1},tag=Dialogue1] TalkTime 0
scoreboard players set @a[scores={DialogueTrigger=1},tag=Dialogue1] DialogueTrigger 0



#-----------------------------------------------------------------------------------------------------------------------------------------------------

tellraw @a[scores={DialogueTrigger=2,TalkTime=1}] {"text":"<...> Yes hello I am a second dialogue."}

tag @a[scores={DialogueTrigger=1,TalkTime=1..}] add Dialogue2
scoreboard players set @a[scores={DialogueTrigger=2},tag=Dialogue2] TalkTime 0
scoreboard players set @a[scores={DialogueTrigger=2},tag=Dialogue2] DialogueTrigger 0
