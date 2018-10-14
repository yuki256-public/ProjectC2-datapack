scoreboard players set @s CT2 1140
scoreboard players reset @s drop

execute if entity @s[team=Red] at @s run summon armor_stand ^ ^ ^1 {Tags:["026-axe","026-Saxe","026-axeSummoned","026-SaxeR"],Invisible:1b,Marker:1b,Glowing:1b,HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Enchantments:[{id:16,lvl:1}]}},{id:"minecraft:iron_axe",Count:1b,tag:{Enchantments:[{id:16,lvl:1}]}}],Pose:{RightArm:[-90f,0f,0f],LeftArm:[-90f,0f,0f]},DisabledSlots:2039583}
execute if entity @s[team=Blue] at @s run summon armor_stand ^ ^ ^1 {Tags:["026-axe","026-Saxe","026-axeSummoned","026-SaxeB"],Invisible:1b,Marker:1b,Glowing:1b,HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Enchantments:[{id:16,lvl:1}]}},{id:"minecraft:iron_axe",Count:1b,tag:{Enchantments:[{id:16,lvl:1}]}}],Pose:{RightArm:[-90f,0f,0f],LeftArm:[-90f,0f,0f]},DisabledSlots:2039583}
execute as @e[tag=026-axeSummoned] store result score @s counter_1 run data get entity @s Pos[0] 100
execute as @e[tag=026-axeSummoned] store result score @s counter_2 run data get entity @s Pos[1] 100
execute as @e[tag=026-axeSummoned] store result score @s counter_3 run data get entity @s Pos[2] 100
#代入するMotion[0,1,2]の測定
execute store result score @e[tag=026-axeSummoned,limit=1,sort=nearest] counter run data get entity @s Motion[0] 100
execute store result score @e[tag=026-axeSummoned,limit=1,sort=nearest] subcounter run data get entity @s Pos[0] 100
execute as @e[tag=026-axeSummoned] run scoreboard players operation @s counter_1 -= @s subcounter
execute as @e[tag=026-axeSummoned] run scoreboard players operation @s counter_1 += @s counter

execute store result score @e[tag=026-axeSummoned,limit=1,sort=nearest] counter run data get entity @s Motion[1] 100
execute store result score @e[tag=026-axeSummoned,limit=1,sort=nearest] subcounter run data get entity @s Pos[1] 100
execute as @e[tag=026-axeSummoned] run scoreboard players operation @s counter_2 -= @s subcounter
execute as @e[tag=026-axeSummoned] run scoreboard players operation @s counter_2 += @s counter

execute store result score @e[tag=026-axeSummoned,limit=1,sort=nearest] counter run data get entity @s Motion[2] 100
execute store result score @e[tag=026-axeSummoned,limit=1,sort=nearest] subcounter run data get entity @s Pos[2] 100
execute as @e[tag=026-axeSummoned] run scoreboard players operation @s counter_3 -= @s subcounter
execute as @e[tag=026-axeSummoned] run scoreboard players operation @s counter_3 += @s counter

scoreboard players operation @e[tag=026-axeSummoned,limit=1] playerNumber = @s playerNumber

execute as @s at @s anchored eyes run tp @e[tag=026-axeSummoned,limit=1,sort=nearest] ^ ^ ^ ~ ~
execute store result score @e[tag=026-axeSummoned,limit=1,sort=nearest] CT1 run data get entity @s Rotation[0] 1000
execute store result score @e[tag=026-axeSummoned,limit=1,sort=nearest] CT2 run data get entity @s Rotation[1] 1000

scoreboard players set @e[tag=026-axeSummoned] counter 0
scoreboard players set @e[tag=026-axeSummoned] subcounter -90
tag @e[tag=026-axeSummoned] remove 026-axeSummoned

playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 2 1
playsound minecraft:item.trident.return master @a ~ ~ ~ 2 1
playsound minecraft:item.trident.return master @a ~ ~ ~ 2 0.5
playsound minecraft:item.trident.return master @a ~ ~ ~ 2 2
playsound minecraft:item.trident.return master @a ~ ~ ~ 2 1
playsound minecraft:item.trident.return master @a ~ ~ ~ 2 0.5
playsound minecraft:item.trident.return master @a ~ ~ ~ 2 2
particle minecraft:poof ~ ~ ~ 0 0 0 1 200 normal @a

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block -59 2 -71 {auto:1b}