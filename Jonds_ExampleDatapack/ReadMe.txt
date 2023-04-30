Hey! This pack sets up and can be used as an example of how I run things in my Minecraft adventure maps. 

Log in to a world and this will auto set things up!

These two dummy scoreboard objectives run most dialogues. 

scoreboard objectives add TalkTime dummy
scoreboard objectives add DialogueTrigger dummy


DialogueTrigger is used to identify which group of commands to run. I call these a Dialogue. Examples of a group could include a cutscene, setting the player up for a Pokemon battle, things happening in the world, etc. 

TalkTime is used as timimg between commands. Each time the function runs, it will count up one, creating time for the player to read the text, for events to occur, etc. 