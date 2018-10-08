scoreboard players add @s counter 1

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


kill @s[scores={counter=180..}]