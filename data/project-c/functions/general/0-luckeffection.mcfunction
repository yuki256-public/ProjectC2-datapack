scoreboard players add @a[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:100b}]}] CT1 20
scoreboard players add @a[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:100b}]}] CT2 20
scoreboard players add @a[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:100b}]}] CT3 20
scoreboard players add @a[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:100b}]}] Mana 10

scoreboard players add @a[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:101b}]}] CT1 20
scoreboard players add @a[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:101b}]}] CT2 20
scoreboard players add @a[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:101b}]}] CT3 20
scoreboard players add @a[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:101b}]}] Mana 10

tag @e[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:103b}]}] add GoumonSpecial
tag @e[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:102b}]}] add GoumonSpecial

effect give @e[tag=GoumonSpecial] minecraft:slowness 5 10
effect give @e[tag=GoumonSpecial] minecraft:weakness 5 1
effect give @e[tag=GoumonSpecial] minecraft:wither 5 2
effect give @e[tag=GoumonSpecial] minecraft:hunger 5 0
effect give @e[tag=GoumonSpecial] minecraft:instant_damage 1 0
tag @e[tag=GoumonSpecial] remove GoumonSpecial


tag @a[nbt={ActiveEffects:[{Id:26b,Amplifier:108b}]}] add HatenaPotionR
#execute @a[tag=HatenaPotionR] ~ ~ ~ particle reddust ~ ~0.3 ~ 3 0 3 1 200 normal @a
#execute @a[tag=HatenaPotionR] ~ ~ ~ playsound minecraft:entity.witch.ambient master @a ~ ~ ~ 2 1.2
#execute @a[tag=HatenaPotionR] ~ ~ ~ function project-c:jobaction/030/hatenaposion

tag @e[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:105b}]}] add ShinenSkill
tag @e[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:104b}]}] add ShinenSkill
tag @e[team=Shinen,nbt={ActiveEffects:[{Id:26b,Amplifier:107b}]}] add ShinenSkill

effect give @e[tag=ShinenSkill] minecraft:nausea 4 10
effect give @e[tag=ShinenSkill] minecraft:poison 4 2
tag @e[tag=ShinenSkill] remove ShinenSkill


#execute @a[score_DeathMagic_min=1] ~ ~ ~ function project-c:jobaction/030/deathmagic
#execute @a[score_DeathMagic_min=1] ~ ~ ~ execute @a[score_DeathMagicCount_min=1] ~ ~ ~ scoreboard players reset @a[score_DeathMagicCount_min=1] DeathMagicCount


scoreboard players add @a[nbt={ActiveEffects:[{Id:26b,Amplifier:106b}]}] CT1 20
scoreboard players add @a[nbt={ActiveEffects:[{Id:26b,Amplifier:106b}]}] CT2 20
scoreboard players add @a[nbt={ActiveEffects:[{Id:26b,Amplifier:106b}]}] CT3 20
scoreboard players add @a[nbt={ActiveEffects:[{Id:26b,Amplifier:106b}]}] Mana 10

#エクスエリクサー
tag @a[nbt={ActiveEffects:[{Id:26b,Amplifier:110b}]}] add Elixir
scoreboard players set @a[tag=Elixir] CT1 1200
scoreboard players set @a[tag=Elixir] CT2 1200
scoreboard players set @a[tag=Elixir] CT3 1200
scoreboard players set @a[tag=Elixir] Mana 300
execute as @a[tag=Elixir] at @s run particle firework ~ ~1.2 ~ 0 0 0 0.5 160 
execute as @a[tag=Elixir] at @s run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 3 2
tag @a[tag=Elixir] remove Elixir 

#extraSkill
tag @a[tag=!extra,nbt={ActiveEffects:[{Id:26b,Amplifier:120b}]}] add extraready 

execute as @a[tag=extraready] at @s run me がエクストラスキルの発動権を得ました！
execute as @a[tag=extraready] at @s run particle totem_of_undying ~ ~1.5 ~ 0 0 0 0.5 100 
execute as @a[tag=extraready] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @a ~ ~ ~ 3 1
execute as @a[tag=extraready] at @s run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 3 1

tag @a[tag=extraready] add extra
tag @a[tag=extraready] remove extraready



effect clear @a minecraft:luck 