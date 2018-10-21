execute as @a[scores={jobNumber=31},tag=Battle,gamemode=!spectator] at @s if blocks ~ ~ ~ ~ 255 ~ 0 0 -32 masked run tag @s add 031-dayWalking
execute store result score #031-daytime counter run time query daytime
execute unless score #031-daytime counter matches 12500..23500 as @a[tag=031-dayWalking] at @s run function project-c:jobaction/031/day
tag @a[tag=031-dayWalking] remove 031-dayWalking