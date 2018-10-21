scoreboard players add @s counter 1
execute if entity @s[scores={counter=45..}] run scoreboard players add @s counter_1 1
scoreboard players add @s counter_2 2
scoreboard players add @s counter_3 6
execute if entity @s[tag=031-necroCXZ] run scoreboard players remove @s[scores={counter_3=90..}] counter_3 180
execute if entity @s[tag=031-necroCY] run scoreboard players remove @s[scores={counter_3=180..}] counter_3 360
execute if entity @s[tag=031-necroCXZ] run scoreboard players remove @s[scores={counter_2=90..}] counter_2 180
execute if entity @s[tag=031-necroCY] run scoreboard players remove @s[scores={counter_2=180..}] counter_2 360

#六芒星の演出
execute if entity @s[tag=031-necroCXZ] store result entity @s Rotation[1] float -1 run scoreboard players get @s counter_2
execute if entity @s[tag=031-necroCY] store result entity @s Rotation[0] float -1 run scoreboard players get @s counter_2
execute if entity @s[tag=031-necroCXZ] run function project-c:jobaction/031/skill/2/2xz
execute if entity @s[tag=031-necroCY] run function project-c:jobaction/031/skill/2/2y
#魔法陣の円の演出
execute if entity @s[tag=031-necroCXZ] store result entity @s Rotation[1] float 1 run scoreboard players get @s counter_3
execute if entity @s[tag=031-necroCY] store result entity @s Rotation[0] float 1 run scoreboard players get @s counter_3
particle minecraft:dust 0.67 0 0 2 ^ ^ ^2 0 0 0 1 1 force @a
particle minecraft:dust 0.67 0 0 2 ^ ^ ^-2 0 0 0 1 1 force @a
execute if entity @s[tag=031-necroCY] run particle minecraft:dust 0.67 0 0 2 ^-2 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=031-necroCY] run particle minecraft:dust 0.67 0 0 2 ^2 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=031-necroCXZ] run particle minecraft:dust 0.67 0 0 2 ^ ^-2 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=031-necroCXZ] run particle minecraft:dust 0.67 0 0 2 ^ ^2 ^ 0 0 0 1 1 force @a

kill @s[scores={counter=96..}]

execute if entity @s[scores={counter_1=5..}] run playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 3 2
execute if entity @s[scores={counter_1=5..}] run summon bat ^ ^ ^2 {Tags:["Battle","031-necroBat","031-necroBatF"],Health:0.01f,NoAI:1b,Invulnerable:1b}
execute if entity @s[scores={counter_1=5..}] run summon bat ^ ^ ^-2 {Tags:["Battle","031-necroBat","031-necroBatF"],Health:0.01f,NoAI:1b,Invulnerable:1b}
execute if entity @s[scores={counter_1=5..}] if entity @s[tag=031-necroCY] run summon bat ^2 ^ ^ {Tags:["Battle","031-necroBat","031-necroBatF"],Health:0.01f,NoAI:1b,Invulnerable:1b}
execute if entity @s[scores={counter_1=5..}] if entity @s[tag=031-necroCY] run summon bat ^-2 ^ ^ {Tags:["Battle","031-necroBat","031-necroBatF"],Health:0.01f,NoAI:1b,Invulnerable:1b}
execute if entity @s[scores={counter_1=5..}] if entity @s[tag=031-necroCXZ] run summon bat ^ ^2 ^ {Tags:["Battle","031-necroBat","031-necroBatF"],Health:0.01f,NoAI:1b,Invulnerable:1b}
execute if entity @s[scores={counter_1=5..}] if entity @s[tag=031-necroCXZ] run summon bat ^ ^-2 ^ {Tags:["Battle","031-necroBat","031-necroBatF"],Health:0.01f,NoAI:1b,Invulnerable:1b}
execute if entity @s[scores={counter_1=5..}] if entity @s[tag=031-necroC+1] as @e[type=bat,tag=031-necroBatF] run data merge entity @s {Rotation:[90f,0f]}
execute if entity @s[scores={counter_1=5..}] if entity @s[tag=031-necroC-1] as @e[type=bat,tag=031-necroBatF] run data merge entity @s {Rotation:[-90f,0f]}
execute if entity @s[scores={counter_1=5..}] if entity @s[tag=031-necroC+2] as @e[type=bat,tag=031-necroBatF] run data merge entity @s {Rotation:[0f,90f]}
execute if entity @s[scores={counter_1=5..}] if entity @s[tag=031-necroC-2] as @e[type=bat,tag=031-necroBatF] run data merge entity @s {Rotation:[0f,-90f]}
execute if entity @s[scores={counter_1=5..}] if entity @s[tag=031-necroC+3] as @e[type=bat,tag=031-necroBatF] run data merge entity @s {Rotation:[180f,0f]}
execute if entity @s[scores={counter_1=5..}] if entity @s[tag=031-necroC-3] as @e[type=bat,tag=031-necroBatF] run data merge entity @s {Rotation:[0f,0f]}
execute if entity @s[scores={counter_1=5..}] if entity @s[team=RedDummy] run team join Red @e[tag=031-necroBatF]
execute if entity @s[scores={counter_1=5..}] if entity @s[team=BlueDummy] run team join Blue @e[tag=031-necroBatF]
execute if entity @s[scores={counter_1=5..}] positioned as @e[tag=031-necroBatF] run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 normal @a
execute if entity @s[scores={counter_1=5..}] at @e[type=bat,tag=031-necroBatF] run scoreboard players operation @e[type=bat,tag=031-necroBatF,limit=1,distance=..0.01,sort=nearest] counter_1 = @s counter
execute if entity @s[scores={counter_1=5..}] run tag @e[tag=031-necroBatF] remove 031-necroBatF
execute if entity @s[scores={counter_1=5..}] run data merge block 1 5 -69 {auto:1b}
execute if entity @s[scores={counter_1=5..}] run scoreboard players set @s counter_1 0