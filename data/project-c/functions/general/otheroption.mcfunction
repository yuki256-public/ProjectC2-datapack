clear @a minecraft:glass_bottle 1
clear @a minecraft:elytra{Damage:431} 1
scoreboard players add @e[type=shulker_bullet] counter 1
kill @e[type=shulker_bullet,scores={counter=80}]

execute as @e[tag=Damage1] at @s run effect give @s minecraft:absorption 1 0 true
execute as @e[tag=Damage1] at @s run effect give @s minecraft:instant_damage 1 0 true
execute as @e[tag=Damage1] at @s run tag @s remove Damage1

execute as @e[tag=Damage2] at @s run effect give @s minecraft:absorption 1 1 true
execute as @e[tag=Damage2] at @s run effect give @s minecraft:instant_damage 1 1 true
execute as @e[tag=Damage2] at @s run tag @s remove Damage2