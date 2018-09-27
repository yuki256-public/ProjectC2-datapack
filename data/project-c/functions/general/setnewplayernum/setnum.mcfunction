scoreboard players operation @s playerNumber = #Base playerNumber

execute if entity @a[tag=!Joined,scores={playerNumber=0}] run scoreboard players add #Base playerNumber 1
execute if entity @a[tag=!Joined,scores={playerNumber=0}] run function project-c:general/setnewplayernum/setnum