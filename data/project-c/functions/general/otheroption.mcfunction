clear @a minecraft:glass_bottle 1
clear @a minecraft:elytra{Damage:431} 1
scoreboard players add @e[type=shulker_bullet] counter 1
kill @e[type=shulker_bullet,scores={counter=80}]
