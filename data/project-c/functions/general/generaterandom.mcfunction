summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[RandomAEC]}
execute as @e[tag=RandomAEC] store result score @s counter run data get entity @s UUIDMost 0.000000000005
scoreboard players operation @e[tag=RandomAEC] counter %= @s counter
scoreboard players operation @s counter = @e[tag=RandomAEC] counter
kill @e[tag=RandomAEC]