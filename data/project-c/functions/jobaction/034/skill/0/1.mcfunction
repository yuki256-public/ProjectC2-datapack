execute store result score #034-dummy counter_1 run data get entity @s Pos[0] 100
execute store result score #034-dummy counter_2 run data get entity @s Pos[1] 100
execute store result score #034-dummy counter_3 run data get entity @s Pos[2] 100
execute as @a[tag=034-playerNumber] store result score #034-dummy counter run data get entity @s Pos[0] 100
scoreboard players operation #034-dummy counter_1 -= #034-dummy counter
execute as @a[tag=034-playerNumber] store result score #034-dummy counter run data get entity @s Pos[1] 100
scoreboard players add #034-dummy counter 75
scoreboard players operation #034-dummy counter_2 -= #034-dummy counter
execute as @a[tag=034-playerNumber] store result score #034-dummy counter run data get entity @s Pos[2] 100
scoreboard players operation #034-dummy counter_3 -= #034-dummy counter
execute store result entity @s Motion[0] double 0.015 run scoreboard players get #034-dummy counter_1
execute store result entity @s Motion[1] double 0.005 run scoreboard players get #034-dummy counter_2
execute store result entity @s Motion[2] double 0.015 run scoreboard players get #034-dummy counter_3
effect clear @s minecraft:regeneration
tag @s remove 034-Sitting