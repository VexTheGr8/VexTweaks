scoreboard objectives add Levels level
scoreboard objectives add Health health
scoreboard objectives add DeathCount deathCount

scoreboard objectives modify DeathCount displayname "Death Count"
scoreboard objectives modify minedDebris displayname "Amt of mined Ancient Debris"
scoreboard objectives modify minedAndesite displayname "Amt of mined Andesite"
scoreboard objectives modify minedDiamonds displayname "Amt of mined diamond ore"
scoreboard objectives modify minedDiroite displayname "Amt of mined diorite"
scoreboard objectives modify minedGranite displayname "Amt of mined Granite"
scoreboard objectives modify minedStone displayname "Amt of mined stone"

scoreboard objectives modify Health rendertype hearts
scoreboard players reset @a DeathCount
scoreboard players reset @a Levels

scoreboard objectives setdisplay belowName Health
scoreboard objectives setdisplay sidebar DeathCount
scoreboard objectives setdisplay list Levels

scoreboard objectives add minedDebris mined:ancient_debris
scoreboard objectives add minedDiamonds mined:diamond_ore
scoreboard objectives add minedStone mined:stone
scoreboard objectives add minedGranite mined:granite
scoreboard objectives add minedDiroite mined:diorite
scoreboard objectives add minedAndesite mined:andesite



w VexTheGr8 scoreboards added
tellraw @p {"text":"Try to stay high on the scoreboards!","bold":true,"color":"gold","font":"minecraft:default","clickEvent":{"action":"suggest_command","value":"I'm going to win!"}}
