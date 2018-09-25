summon minecraft:fireball ~ ~1 ~ {direction:[0.0d,-1.0d,0.0d],ExplosionPower:1}
tag @e[tag=PSCountTarget,sort=nearest,limit=1] remove PSCountTarget
kill @s