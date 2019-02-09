execute as @a[scores={jobNumber=39}] if score @s playerNumber = @e[tag=039-as,limit=1] playerNumber run gamemode adventure @s
execute as @a[scores={jobNumber=39}] if score @s playerNumber = @e[tag=039-as,limit=1] playerNumber run effect give @s minecraft:instant_damage 1 0
execute if entity @s[team=RedDummy] run effect give @e[team=Blue,tag=Battle,distance=..3.0] instant_damage 1 0
execute if entity @s[team=BlueDummy] run effect give @e[team=Red,tag=Battle,distance=..3.0] instant_damage 1 0
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 30 normal @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 10 force @a
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1
particle minecraft:flame ~ ~ ~ 0 0 0 1 120 normal @a
particle minecraft:flame ~ ~ ~ 0 0 0 1 40 force @a
kill @s
