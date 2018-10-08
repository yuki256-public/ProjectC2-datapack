scoreboard players add @s counter 1
scoreboard players add @s subcounter 1

tp @s ~ ~ ~ ~3 ~
execute positioned ~ ~0.1 ~ run particle minecraft:dust 1 0.33 0.33 4 ^7.5 ^ ^ 0 0 0 1 1 normal @a
execute positioned ~ ~0.1 ~ run particle minecraft:dust 1 0.33 0.33 4 ^-7.5 ^ ^ 0 0 0 1 1 normal @a
execute positioned ~ ~0.1 ~ run particle minecraft:dust 1 0.33 0.33 4 ^ ^ ^7.5 0 0 0 1 1 normal @a
execute positioned ~ ~0.1 ~ run particle minecraft:dust 1 0.33 0.33 4 ^ ^ ^-7.5 0 0 0 1 1 normal @a
execute positioned ~ ~0.35 ~ run particle minecraft:dust 1 0.33 0.33 3 ^7.5 ^ ^ 0 0 0 1 1 force @a
execute positioned ~ ~0.35 ~ run particle minecraft:dust 1 0.33 0.33 3 ^-7.5 ^ ^ 0 0 0 1 1 force @a
execute positioned ~ ~0.35 ~ run particle minecraft:dust 1 0.33 0.33 3 ^ ^ ^7.5 0 0 0 1 1 force @a
execute positioned ~ ~0.35 ~ run particle minecraft:dust 1 0.33 0.33 3 ^ ^ ^-7.5 0 0 0 1 1 force @a
execute positioned ~ ~0.5 ~ run particle minecraft:dust 1 0.33 0.33 2 ^7.5 ^ ^ 0 0 0 1 1 normal @a
execute positioned ~ ~0.5 ~ run particle minecraft:dust 1 0.33 0.33 2 ^-7.5 ^ ^ 0 0 0 1 1 normal @a
execute positioned ~ ~0.5 ~ run particle minecraft:dust 1 0.33 0.33 2 ^ ^ ^7.5 0 0 0 1 1 normal @a
execute positioned ~ ~0.5 ~ run particle minecraft:dust 1 0.33 0.33 2 ^ ^ ^-7.5 0 0 0 1 1 normal @a

execute if entity @s[scores={counter=180..}] run particle block glass ~ ~5 ~ 5 3 5 4 1000 normal @a
execute if entity @s[scores={counter=180..}] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 1 400 normal @a
execute if entity @s[scores={counter=180..}] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 1 100 force @a
execute if entity @s[scores={counter=180..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={counter=180..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={counter=180..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={counter=180..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5

execute if entity @s[scores={counter=60}] run function project-c:jobaction/023/skill/2/3-3p
execute if entity @s[scores={counter=65}] run function project-c:jobaction/023/skill/2/3-3p
execute if entity @s[scores={counter=70}] run function project-c:jobaction/023/skill/2/3-3p
execute if entity @s[scores={counter=75}] run function project-c:jobaction/023/skill/2/3-3p
execute if entity @s[scores={counter=80}] run function project-c:jobaction/023/skill/2/3-3p
execute if entity @s[scores={counter=85}] run function project-c:jobaction/023/skill/2/3-3p
execute if entity @s[scores={counter=90}] run function project-c:jobaction/023/skill/2/3-3p
execute if entity @s[scores={counter=95}] run function project-c:jobaction/023/skill/2/3-3p
execute if entity @s[scores={counter=100}] run function project-c:jobaction/023/skill/2/3-3p
execute if entity @s[scores={counter=105}] run function project-c:jobaction/023/skill/2/3-3p
execute if entity @s[scores={counter=110}] run function project-c:jobaction/023/skill/2/3-3p
execute if entity @s[scores={counter=115}] run function project-c:jobaction/023/skill/2/3-3p

kill @s[scores={counter=180..}]