summon minecraft:armor_stand ~ ~ ~ {Tags:["032-houndF1"],Invisible:1b,NoGravity:1b,Marker:1b}
execute if entity @s[team=Red] run team join RedDummy @e[tag=032-houndF1]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=032-houndF1]
tp @e[tag=032-houndF1] ~ ~ ~ facing entity @e[tag=032-houndF,limit=1] feet
execute as @e[tag=032-houndF1] run function project-c:jobaction/032/skill/3/1a
function project-c:jobaction/032/skill/3/1b