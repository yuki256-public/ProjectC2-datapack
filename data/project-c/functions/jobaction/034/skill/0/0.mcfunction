execute at @a[tag=034-playerNumber,limit=1] rotated as @e[tag=034-playerNumber,limit=1] positioned ~ ~1.2 ~ run tp @s ^ ^ ^1
execute store result score @s subcounter run data get entity @s Health 1
title @a[tag=034-playerNumber,limit=1] actionbar [{"text":"狼HP:","color":"green","underlined":"true"},{"score":{"name":"@s","objective":"subcounter"}}]
execute if entity @s[nbt={Sitting:0b}] at @s run function project-c:jobaction/034/skill/0/1