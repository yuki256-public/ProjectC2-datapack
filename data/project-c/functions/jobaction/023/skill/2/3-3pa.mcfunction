scoreboard players add @s counter 1
scoreboard players add @s subcounter 1
particle flame ~ ~3 ~ 0.15 2 0.15 0.015 2 normal @a
particle flame ~ ~3 ~ 0.3 2 0.3 0.015 1 force @a
execute if entity @s[scores={subcounter=8..}] run particle lava ~ ~4 ~ 0.2 2 0.2 0.4 1 normal @a
execute if entity @s[team=RedDummy] if entity @e[tag=Battle,team=!Red,dx=0,dy=6,dz=0,nbt={HurtTime:0s}] run summon arrow ~ ~6 ~ {CustomName:"{\"text\":\"Flame Piller\",\"color\":\"red\"}",Motion:[0.0d,-5.0d,0.0d],pickup:0,damage:1.0d,life:1200s,Fire:100s}
execute if entity @s[team=BlueDummy] if entity @e[tag=Battle,team=!Blue,dx=0,dy=6,dz=0,nbt={HurtTime:0s}] run summon arrow ~ ~6 ~ {CustomName:"{\"text\":\"Flame Piller\",\"color\":\"red\"}",Motion:[0.0d,-5.0d,0.0d],pickup:0,damage:1.0d,life:1200s,Fire:100s}

execute if entity @e[tag=023-1d] run function project-c:jobaction/023/skill/2/3-3pa2
scoreboard players set @s[scores={subcounter=10..}] subcounter 0
kill @s[scores={counter=120..}]