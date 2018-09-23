scoreboard players set @a[tag=JobChanged] CT1 1200
scoreboard players set @a[tag=JobChanged] CT2 1200
scoreboard players set @a[tag=JobChanged] CT3 1200
effect give @a[tag=JobChanged] health_boost 1000000 4 true
effect give @a[tag=JobChanged] instant_health 1 100 true
clear @a[tag=JobChanged] 
scoreboard players set @a[tag=JobChanged] drop 1
tag @a[tag=JobChanged] remove JobChanged
data merge block 81 6 -71 {auto:1b}