scoreboard players set @s CT2 0
scoreboard players set @s[scores={CT3=1200..}] CT3 1200
scoreboard players remove @s CT3 100
execute if entity @e[tag=034-wolf] at @e[tag=034-wolf] if score @s playerNumber = @e[tag=034-wolf,limit=1,sort=nearest,distance=..0.01] playerNumber run data merge entity @e[tag=034-wolf,limit=1,sort=nearest,distance=..0.01] {Owner:"",Health:0f}
playsound minecraft:item.bottle.fill_dragonbreath master @a ~ ~ ~ 2 1
particle minecraft:falling_dust white_wool ~ ~1 ~ 1 1 1 1 120 force @a
execute if entity @s[team=Red] run summon wolf ~ ~1 ~ {CustomName:"\"わんこマター\"",Tags:["Battle","034-wolfR","034-wolfF","034-wolf"],Attributes:[{Name:generic.maxHealth,Base:20},{Name:generic.movementSpeed,Base:0.3},{Name:generic.attackDamage,Base:3},{Name:generic.followRange,Base:100}],Health:20.0f,Team:"Red"}
execute if entity @s[team=Blue] run summon wolf ~ ~1 ~ {CustomName:"\"わんこマター\"",Tags:["Battle","034-wolfB","034-wolfF","034-wolf"],Attributes:[{Name:generic.maxHealth,Base:20},{Name:generic.movementSpeed,Base:0.3},{Name:generic.attackDamage,Base:3},{Name:generic.followRange,Base:100}],Health:20.0f,Team:"Red"}
execute at @e[tag=034-wolfF] run scoreboard players operation @e[tag=034-wolfF,limit=1,sort=nearest,distance=..0.01] playerNumber = @s playerNumber
tag @e[tag=034-wolfF] remove 034-wolfF

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
tag @s remove SkillReady1
tag @s remove SkillReady3