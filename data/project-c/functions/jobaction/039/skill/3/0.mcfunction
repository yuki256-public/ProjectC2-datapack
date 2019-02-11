scoreboard players set @s CT3 600

execute if entity @s[team=Red] run tag @e[team=Blue,tag=Battle,nbt={HurtTime:10s},distance=..6,sort=nearest,limit=1] add 039-trans
execute if entity @s[team=Blue] run tag @e[team=Red,tag=Battle,nbt={HurtTime:10s},distance=..6,sort=nearest,limit=1] add 039-trans

execute positioned as @e[tag=039-trans,sort=nearest,limit=1] run playsound minecraft:entity.wither.death master @a ~ ~ ~ 0.3 2
execute positioned as @e[tag=039-trans,sort=nearest,limit=1] run particle dust 0 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 1 90 normal @a
execute positioned as @e[tag=039-trans,sort=nearest,limit=1] run particle dust 0 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 1 30 force @a

execute as @e[tag=039-trans] positioned as @s run function project-c:jobaction/039/skill/3/1

tag @e[tag=039-trans] remove 039-trans



tag @s remove SkillReady3
scoreboard players set @s usedSkill 3