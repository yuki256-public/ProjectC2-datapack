scoreboard players add @s counter_2 1

execute if entity @s[team=Red,gamemode=!spectator] run effect give @e[team=Blue,tag=Battle,distance=..3] minecraft:wither 2 1 true
execute if entity @s[team=Blue,gamemode=!spectator] run effect give @e[team=Red,tag=Battle,distance=..3] minecraft:wither 2 1 true

scoreboard players reset @s[scores={counter_2=101..}] counter_2

execute if entity @s[gamemode=!spectator] run particle sweep_attack ~ ~1 ~ 0 0 0 1 1