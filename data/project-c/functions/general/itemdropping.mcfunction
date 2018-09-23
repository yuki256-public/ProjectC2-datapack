tag @e[type=item,tag=!isItem,nbt={item:{tag:{isItem:1b}}}] add isItem 
kill @e[type=item,tag=!isItem]
execute as @p[scores={drop=1}] at @s run execute as @e[distance=..2,tag=isItem] at @s run scoreboard players reset @p[scores={drop=1}] drop
execute as @p[scores={drop=1}] at @s run data merge block -75 17 -122 {auto:1b}