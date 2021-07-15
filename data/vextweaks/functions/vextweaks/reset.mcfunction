#built by vexthegr8

title @a title {"text":"VexTweaks: v1.5","color":"blue","font":"minecraft:default"}
tellraw @a {"text":"VexTweaks Enabled!","bold":true,"color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Made by: VexTheGr8","bold":true}]}}

scoreboard objectives add status-afk trigger [{"text":"Status: "},{"text":"AFK","color":"dark_red"}]
scoreboard objectives add status-rec trigger [{"text":"Status: "},{"text":"REC","color":"red"}]
scoreboard objectives add status-live trigger [{"text":"Status: "},{"text":"LIVE","color":"light_purple"}]
scoreboard objectives add status-playing trigger [{"text":"Status: "},{"text":"Playing","color":"gold"}]
scoreboard objectives add status-pvp trigger [{"text":"Status: "},{"text":"PvP","color":"red"}]
scoreboard objectives add status-reset trigger [{"text":"Status reseted"}]

scoreboard objectives add statset dummy

team add status_afk
team add status_rec
team add status_live
team add status_playing
team add status_pvp

team modify status_afk prefix [{"text":"[","color":"white"},{"text":"AFK","color":"dark_red"},{"text":"] ","color":"white"}]
team modify status_rec prefix [{"text":"[","color":"white"},{"text":"REC","color":"red"},{"text":"] ","color":"white"}]
team modify status_live prefix [{"text":"[","color":"white"},{"text":"LIVE","color":"light_purple"},{"text":"] ","color":"white"}]
team modify status_playing prefix [{"text":"[","color":"white"},{"text":"Playing","color":"gold"},{"text":"] ","color":"white"}]
team modify status_pvp prefix [{"text":"[","color":"white"},{"text":"PvP","color":"red"},{"text":"] ","color":"white"}]

