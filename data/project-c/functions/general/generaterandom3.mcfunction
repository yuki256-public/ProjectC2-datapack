summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[RandomAEC]}
execute as @e[tag=RandomAEC] store result score @s counter_3 run data get entity @s UUIDMost 0.000000000005
scoreboard players operation @e[tag=RandomAEC] counter_3 %= @s counter_3
scoreboard players operation @s counter_3 = @e[tag=RandomAEC] counter_3
kill @e[tag=RandomAEC]