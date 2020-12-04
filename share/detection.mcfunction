## Detect players using Jesus.
execute @s[tag=!operator] ~ ~ ~ detect ~ ~ ~ air 0 execute @s ~ ~ ~ detect ~1 ~-1 ~1 water -1 execute @s ~ ~ ~ detect ~ ~-1 ~1 water -1 execute @s ~ ~ ~ detect ~-1 ~-1 ~1 water -1 execute @s ~ ~ ~ detect ~1 ~-1 ~ water -1 execute @s ~ ~ ~ detect ~ ~-1 ~ water -1 execute @s ~ ~ ~ detect ~-1 ~-1 ~ water -1 execute @s ~ ~ ~ detect ~1 ~-1 ~-1 water -1 execute @s ~ ~ ~ detect ~ ~-1 ~-1 water -1 execute @s ~ ~ ~ detect ~-1 ~-1 ~-1 water -1 scoreboard players set @s on_liquid 2

execute @s[tag=!operator] ~ ~ ~ detect ~ ~ ~ air 0 execute @s ~ ~ ~ detect ~1 ~-1 ~1 lava -1 execute @s ~ ~ ~ detect ~ ~-1 ~1 lava -1 execute @s ~ ~ ~ detect ~-1 ~-1 ~1 lava -1 execute @s ~ ~ ~ detect ~1 ~-1 ~ lava -1 execute @s ~ ~ ~ detect ~ ~-1 ~ lava -1 execute @s ~ ~ ~ detect ~-1 ~-1 ~ lava -1 execute @s ~ ~ ~ detect ~1 ~-1 ~-1 lava -1 execute @s ~ ~ ~ detect ~ ~-1 ~-1 lava -1 execute @s ~ ~ ~ detect ~-1 ~-1 ~-1 lava -1 scoreboard players set @s on_liquid 2

scoreboard players remove @s[tag=!operator,scores={on_liquid=1..}] on_liquid 1

scoreboard players add @s[tag=!operator,scores={on_liquid=1..}] on_liquid_time 1
scoreboard players set @s[tag=!operator,scores={on_liquid=0}] on_liquid_time 0

tag @s[tag=!operator,scores={on_liquid_time=40..}] add jesus_flag

## Run main.
execute @s[tag=!operator,tag=jesus_flag] ~ ~ ~ function server_central_system/anti_cheat_unit/modules/anti_jesus/main