#############
scoreboard objectives add vexthegr8GUI dummy
tag @s remove vexthegr8Used
# item 0 on slot 10 || spruce_sign
execute store result score @s vexthegr8GUI run data get entity @s Items[0].Slot
execute if entity @s[tag=!vexthegr8Used] unless score @s vexthegr8GUI matches 10 run clear @p minecraft:spruce_sign{IsGuiItem:1, display: {"Name": "{\"text\":\"Scoreboards\",\"italic\":false}"}} 2
execute if entity @s[tag=!vexthegr8Used] unless score @s vexthegr8GUI matches 10 run function vexthegr8:scoreboards
execute if entity @s[tag=!vexthegr8Used] unless score @s vexthegr8GUI matches 10 run tag @s add vexthegr8Used
scoreboard players reset @s gui

# item 1 on slot 13 || redstone_block
execute store result score @s vexthegr8GUI run data get entity @s Items[1].Slot
execute if entity @s[tag=!vexthegr8Used] unless score @s vexthegr8GUI matches 13 run clear @p minecraft:redstone_block{IsGuiItem:1, display: {"Name": "{\"text\":\"Gamerules Configuration\",\"italic\":false}"}} 2
execute if entity @s[tag=!vexthegr8Used] unless score @s vexthegr8GUI matches 13 run function vexthegr8:gamerulesconfig
execute if entity @s[tag=!vexthegr8Used] unless score @s vexthegr8GUI matches 13 run tag @s add vexthegr8Used
scoreboard players reset @s gui

# item 2 on slot 16 || iron_block
execute store result score @s vexthegr8GUI run data get entity @s Items[2].Slot
execute if entity @s[tag=!vexthegr8Used] unless score @s vexthegr8GUI matches 16 run clear @p minecraft:iron_block{IsGuiItem:1, display: {"Name": "{\"text\":\"Setup Server\",\"italic\":false}"}} 2
execute if entity @s[tag=!vexthegr8Used] unless score @s vexthegr8GUI matches 16 run function vexthegr8:setup
execute if entity @s[tag=!vexthegr8Used] unless score @s vexthegr8GUI matches 16 run tag @s add vexthegr8Used
scoreboard players reset @s gui

data merge entity @s {Items:[],CustomName: "{\"text\":\"VexTweaks Settings Menu\",\"italic\":false}"}
replaceitem entity @s container.10 minecraft:spruce_sign{"IsGuiItem":1,"HideFlags":39,"display":{"Name":"{\"text\":\"Scoreboards\",\"italic\":false}"}} 1
replaceitem entity @s container.13 minecraft:redstone_block{"IsGuiItem":1,"HideFlags":39,"display":{"Name":"{\"text\":\"Gamerules Configuration\",\"italic\":false}"}} 1
replaceitem entity @s container.16 minecraft:iron_block{"IsGuiItem":1,"HideFlags":39,"display":{"Name":"{\"text\":\"Setup Server\",\"italic\":false}"}} 1


