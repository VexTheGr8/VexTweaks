#tick.mcfunction, runs every tick

function vexthegr8:gamerulesconfig
function vexthegr8:enable_all

execute if score statset_afk statset matches 1 run scoreboard players enable @a status-afk
execute if score statset_rec statset matches 1 run scoreboard players enable @a status-rec
execute if score statset_live statset matches 1 run scoreboard players enable @a status-live
execute if score statset_playing statset matches 1 run scoreboard players enable @a status-playing
execute if score statset_pvp statset matches 1 run scoreboard players enable @a status-pvp
execute if score statset_reset statset matches 1 run scoreboard players enable @a status-reset

execute as @a[scores={status-afk=1..}] at @s run team leave @s
execute as @a[scores={status-rec=1..}] at @s run team leave @s
execute as @a[scores={status-live=1..}] at @s run team leave @s
execute as @a[scores={status-playing=1..}] at @s run team leave @s
execute as @a[scores={status-pvp=1..}] at @s run team leave @s
execute as @a[scores={status-reset=1..}] at @s run team leave @s

team join status_afk @a[scores={status-afk=1..}]
team join status_rec @a[scores={status-rec=1..}]
team join status_live @a[scores={status-live=1..}]
team join status_playing @a[scores={status-playing=1..}]
team join status_pvp @a[scores={status-pvp=1..}]

scoreboard players reset @a[team=status_afk] status-afk
scoreboard players reset @a[team=status_rec] status-rec
scoreboard players reset @a[team=status_live] status-live
scoreboard players reset @a[team=status_playing] status-playing
scoreboard players reset @a[team=status_pvp] status-pvp
scoreboard players reset @a[scores={status-reset=1..}] status-reset
