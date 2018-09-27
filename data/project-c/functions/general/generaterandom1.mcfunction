summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[RandomAEC]}
execute as @e[tag=RandomAEC] store result score @s counter_1 run data get entity @s UUIDMost 0.000000000005
scoreboard players operation @e[tag=RandomAEC] counter_1 %= @s counter_1
scoreboard players operation @s counter_1 = @e[tag=RandomAEC] counter_1
kill @e[tag=RandomAEC]