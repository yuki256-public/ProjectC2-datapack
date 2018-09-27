scoreboard players set #Base playerNumber 0
scoreboard players set @a[tag=!Joined] playerNumber 0

execute as @a run function project-c:general/setnewplayernum/setbase

execute as @a[tag=!Joined,limit=1] run function project-c:general/setnewplayernum/setnum

scoreboard players reset #Base playerNumber