#
#

scoreboard players add @e[tag=041-cardinal] counter 1
execute as @e[tag=041-cardinal,scores={counter=..40}] at @s run function project-c:jobaction/041/arrow/1/1-4
execute if entity @e[tag=041-cardinal,scores={counter=99..}] run kill @e[tag=041-cardinal,scores={counter=99..}]