scoreboard players add @s counter 1
execute if entity @s[scores={counter=2}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[team=Red] as @e[tag=Battle,team=!Red,distance=..1] run tag @s add 031-necroBHit
execute if entity @s[team=Blue] as @e[tag=Battle,team=!Blue,distance=..1] run tag @s add 031-necroBHit
execute if entity @e[tag=031-necroBHit] positioned as @e[tag=031-necroBHit] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Necro Bat\",\"color\":\"light_purple\"}",ReapplicationDelay:0,Radius:0.6f,Duration:5,DurationOnUse:0f,Age:4,WaitTime:1,Effects:[{Id:7,Amplifier:0,Duration:1}]}
execute if entity @e[tag=031-necroBHit] run scoreboard players set @s counter 95
execute if entity @e[tag=031-necroBHit] run tag @e[tag=031-necroBHit] remove 031-necroBHit
execute if entity @s[scores={counter=12..},team=Red] facing entity @e[tag=Battle,team=!Red,limit=1,distance=..10,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={counter=12..},team=Blue] facing entity @e[tag=Battle,team=!Blue,limit=1,distance=..10,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={counter_1=..50}] run tp @s ^ ^ ^0.15
execute if entity @s[scores={counter_1=51..55}] run tp @s ^ ^ ^0.2
execute if entity @s[scores={counter_1=56..60}] run tp @s ^ ^ ^0.3
execute if entity @s[scores={counter_1=61..65}] run tp @s ^ ^ ^0.4
execute if entity @s[scores={counter_1=66..70}] run tp @s ^ ^ ^0.55
execute if entity @s[scores={counter_1=71..75}] run tp @s ^ ^ ^0.7
execute if entity @s[scores={counter_1=76..80}] run tp @s ^ ^ ^0.85
execute if entity @s[scores={counter_1=81..85}] run tp @s ^ ^ ^1.0
execute if entity @s[scores={counter_1=86..90}] run tp @s ^ ^ ^1.2
execute if entity @s[scores={counter_1=91..95}] run tp @s ^ ^ ^1.4
execute if entity @s[scores={counter_1=96..}] run tp @s ^ ^ ^1.6
kill @s[scores={counter=95..}]