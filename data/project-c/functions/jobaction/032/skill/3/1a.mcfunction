scoreboard players add @s counter 1
execute at @s if entity @e[tag=032-houndF,distance=..1.9] run scoreboard players set @s counter 21
execute at @s run tp @s ^ ^ ^1
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.03 8 normal @a
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.03 2 force @a
execute if entity @s[scores={counter=..20}] run function project-c:jobaction/032/skill/3/1a