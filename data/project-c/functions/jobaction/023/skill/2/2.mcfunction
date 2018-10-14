tag @s add 023-2testp
summon armor_stand ~ ~ ~ {Tags:["023-2test"],Invisible:1b,Marker:1b,NoGravity:1b}
execute as @s at @s anchored eyes run tp @e[tag=023-2test] ^ ^ ^-1 ~ ~
execute as @e[tag=023-2test] at @s run function project-c:jobaction/023/skill/2/2l
kill @e[tag=023-2test]
execute if entity @e[tag=023-n-Animation] if entity @s[team=Red] run team join RedDummy @e[tag=023-n-Animation]
execute if entity @e[tag=023-n-Animation] if entity @s[team=Blue] run team join BlueDummy @e[tag=023-n-Animation]
execute if entity @e[tag=023-n-Animation] at @e[tag=023-n-Animation] run scoreboard players operation @e[tag=023-n-Animation,limit=1,sort=nearest,distance=..0.01] playerNumber = @s playerNumber
tag @e[tag=023-n-Animation] remove 023-n-Animation
tag @s remove 023-2testp