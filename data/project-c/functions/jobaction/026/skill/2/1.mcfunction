scoreboard players add @s counter 1
scoreboard players add @s subcounter 54
execute if entity @s[scores={subcounter=181..}] run scoreboard players remove @s subcounter 360
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s subcounter
execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s subcounter
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get @s CT1
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get @s CT2

#視点を実行者に合わせる
#Motion[0,1,2]の代入
execute if entity @s[scores={counter=1}] store result entity @s Motion[0] double 0.025 run scoreboard players get @s counter_1
execute if entity @s[scores={counter=1}] store result entity @s Motion[1] double 0.025 run scoreboard players get @s counter_2
execute if entity @s[scores={counter=1}] store result entity @s Motion[2] double 0.025 run scoreboard players get @s counter_3

#execute if entity @s[scores={counter=2..}] store result entity @s Motion[0] float 0.01 run data get entity @s Motion[0] 107.69230769230769230769230769231
#execute if entity @s[scores={counter=2..}] store result entity @s Motion[2] float 0.01 run data get entity @s Motion[2] 107.69230769230769230769230769231

kill @s[scores={counter=100..}]
kill @s[nbt={OnGround:1b},scores={counter=2..}]

execute if entity @s[tag=026-SaxeR] positioned as @s run particle minecraft:dust 1 0 0 2 ~ ~ ~ 0.2 0.2 0.2 1 10 force @a
execute if entity @s[tag=026-SaxeB] positioned as @s run particle minecraft:dust 0 0 1 2 ~ ~ ~ 0.2 0.2 0.2 1 10 force @a
execute if entity @s[tag=026-GaxeR] positioned as @s run particle minecraft:dust 1 0 0 2 ~ ~ ~ 0.2 0.2 0.2 1 10 force @a
execute if entity @s[tag=026-GaxeB] positioned as @s run particle minecraft:dust 0 0 1 2 ~ ~ ~ 0.2 0.2 0.2 1 10 force @a
execute if entity @s[tag=026-Saxe] positioned as @s run particle minecraft:dust 0.5 0.5 0.5 3 ~ ~ ~ 0.1 0.1 0.1 1 8 force @a
execute if entity @s[tag=026-Gaxe] positioned as @s run particle minecraft:dust 1 0.6 0 3 ~ ~ ~ 0.1 0.1 0.1 1 8 force @a

execute if entity @s[tag=026-SaxeR] if entity @e[tag=Battle,distance=..2,team=!Red] run function project-c:jobaction/026/skill/2/2
execute if entity @s[tag=026-SaxeB] if entity @e[tag=Battle,distance=..2,team=!Blue] run function project-c:jobaction/026/skill/2/2
execute if entity @s[tag=026-GaxeR] if entity @e[tag=Battle,distance=..2.2,team=!Red] run function project-c:jobaction/026/skill/2/2
execute if entity @s[tag=026-GaxeB] if entity @e[tag=Battle,distance=..2.2,team=!Blue] run function project-c:jobaction/026/skill/2/2
