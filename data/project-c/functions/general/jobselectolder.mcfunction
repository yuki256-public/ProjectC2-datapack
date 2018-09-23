execute as @a[tag=JobChanged] at @s run particle firework ~ ~1 ~ 0 0 0 0.3 50
execute as @a[tag=JobChanged] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
scoreboard players reset @a[tag=JobChanged] usedSkill
replaceitem entity @a[tag=JobChanged] armor.chest minecraft:air
effect clear @a[tag=JobChanged] minecraft:regeneration 
effect clear @a[tag=JobChanged] minecraft:invisibility 
effect clear @a[tag=JobChanged] minecraft:jump_boost 
scoreboard players set @a[tag=JobChanged] Mana 0

scoreboard players reset @a[tag=JobChanged] teleportCount
scoreboard players set @a[tag=JobChanged] subcounter 0

data merge block -111 2 -122 {auto:0b}
execute as @a[scores={jobNumber=1}] at @s run data merge block -111 2 -122 {auto:1b}
data merge block -99 2 -122 {auto:0b}
execute as @a[scores={jobNumber=2}] at @s run data merge block -99 2 -122 {auto:1b}
data merge block -87 2 -122 {auto:0b}
execute as @a[scores={jobNumber=3}] at @s run data merge block -87 2 -122 {auto:1b}
data merge block -75 2 -122 {auto:0b}
execute as @a[scores={jobNumber=4}] at @s run data merge block -75 2 -122 {auto:1b}
data merge block -63 2 -122 {auto:0b}
execute as @a[scores={jobNumber=5}] at @s run data merge block -63 2 -122 {auto:1b}
data merge block -51 2 -122 {auto:0b}
execute as @a[scores={jobNumber=6}] at @s run data merge block -51 2 -122 {auto:1b}
data merge block -39 2 -122 {auto:0b}
execute as @a[scores={jobNumber=7}] at @s run data merge block -39 2 -122 {auto:1b}
data merge block -27 2 -122 {auto:0b}
execute as @a[scores={jobNumber=8}] at @s run data merge block -27 2 -122 {auto:1b}
data merge block -15 2 -122 {auto:0b}
execute as @a[scores={jobNumber=9}] at @s run data merge block -15 2 -122 {auto:1b}
data merge block -3 2 -122 {auto:0b}
execute as @a[scores={jobNumber=10}] at @s run data merge block -3 2 -122 {auto:1b}
data merge block 9 2 -122 {auto:0b}
execute as @a[scores={jobNumber=11}] at @s run data merge block 9 2 -122 {auto:1b}
data merge block 21 2 -122 {auto:0b}
execute as @a[scores={jobNumber=12}] at @s run data merge block 21 2 -122 {auto:1b}
data merge block 33 2 -122 {auto:0b}
execute as @a[scores={jobNumber=13}] at @s run data merge block 33 2 -122 {auto:1b}
data merge block 45 2 -122 {auto:0b}
execute as @a[scores={jobNumber=14}] at @s run data merge block 45 2 -122 {auto:1b}

data merge block 955 1 9 {auto:1b}