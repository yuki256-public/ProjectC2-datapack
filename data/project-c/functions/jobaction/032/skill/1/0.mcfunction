scoreboard players set @s CT1 800
execute if entity @s[team=Red] run tag @e[type=wolf,distance=..8] add 032-cometR
execute if entity @s[team=Blue] run tag @e[type=wolf,distance=..8] add 032-cometB
execute unless entity @e[tag=032-cometR] unless entity @e[tag=032-cometB] run title @s actionbar {"text":"周囲に狼がいません","color":"red","underlined":true}
execute unless entity @e[tag=032-cometR] unless entity @e[tag=032-cometB] run particle smoke ~ ~1 ~ 1 1 1 0 50 normal @a
execute unless entity @e[tag=032-cometR] unless entity @e[tag=032-cometB] run playsound minecraft:block.dispenser.fail master @a ~ ~ ~ 1 1.2
execute unless entity @e[tag=032-cometR] unless entity @e[tag=032-cometB] run scoreboard players set @s CT1 1180
execute as @e[tag=032-cometR] at @s run function project-c:jobaction/032/skill/1/1r
execute as @e[tag=032-cometB] at @s run function project-c:jobaction/032/skill/1/1b





tag @s remove SkillReady1
scoreboard players set @s usedSkill 1