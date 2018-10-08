#実行者     -> jobNumber = 023
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/023/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/023/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/023/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Shot Wand\",\"italic\":false}"}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/023/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Circle Magic\",\"italic\":false}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/023/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Circle Magic\",\"italic\":false}"}}}},scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/023/skill/2/2
execute if entity @s[nbt={SelectedItem:{tag:{023PowerStick:1b}}},scores={useCarrotStick=1..}] run function project-c:jobaction/023/skill/0/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Assist Book\",\"italic\":false}"}}}},scores={CT3=1200..,useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/023/skill/3/0

execute if entity @s[tag=023-0] run title @s actionbar ["",{"text":"無:CT","color":"gray","underlined":"true","bold":true},{"score":{"name":"@s","objective":"counter"},"color":"gray","underlined":"true","bold":true},{"text":"  "},{"text":"氷:CT","color":"aqua","underlined":"true"},{"score":{"name":"@s","objective":"subcounter"},"color":"aqua","underlined":"true"},{"text":"  "},{"text":"闇:CT","color":"light_purple","underlined":"true"},{"score":{"name":"@s","objective":"counter_1"},"color":"light_purple","underlined":"true"},{"text":"  "},{"text":"火:CT","color":"red","underlined":"true"},{"score":{"name":"@s","objective":"counter_2"},"color":"red","underlined":"true"},{"text":"  "},{"text":"風:CT","color":"green","underlined":"true"},{"score":{"name":"@s","objective":"counter_3"},"color":"green","underlined":"true"}]
execute if entity @s[tag=023-1] run title @s actionbar ["",{"text":"無:CT","color":"gray","underlined":"true"},{"score":{"name":"@s","objective":"counter"},"color":"gray","underlined":"true"},{"text":"  "},{"text":"氷:CT","color":"aqua","underlined":"true","bold":true},{"score":{"name":"@s","objective":"subcounter"},"color":"aqua","underlined":"true","bold":true},{"text":"  "},{"text":"闇:CT","color":"light_purple","underlined":"true"},{"score":{"name":"@s","objective":"counter_1"},"color":"light_purple","underlined":"true"},{"text":"  "},{"text":"火:CT","color":"red","underlined":"true"},{"score":{"name":"@s","objective":"counter_2"},"color":"red","underlined":"true"},{"text":"  "},{"text":"風:CT","color":"green","underlined":"true"},{"score":{"name":"@s","objective":"counter_3"},"color":"green","underlined":"true"}]
execute if entity @s[tag=023-2] run title @s actionbar ["",{"text":"無:CT","color":"gray","underlined":"true"},{"score":{"name":"@s","objective":"counter"},"color":"gray","underlined":"true"},{"text":"  "},{"text":"氷:CT","color":"aqua","underlined":"true"},{"score":{"name":"@s","objective":"subcounter"},"color":"aqua","underlined":"true"},{"text":"  "},{"text":"闇:CT","color":"light_purple","underlined":"true","bold":true},{"score":{"name":"@s","objective":"counter_1"},"color":"light_purple","underlined":"true","bold":true},{"text":"  "},{"text":"火:CT","color":"red","underlined":"true"},{"score":{"name":"@s","objective":"counter_2"},"color":"red","underlined":"true"},{"text":"  "},{"text":"風:CT","color":"green","underlined":"true"},{"score":{"name":"@s","objective":"counter_3"},"color":"green","underlined":"true"}]
execute if entity @s[tag=023-3] run title @s actionbar ["",{"text":"無:CT","color":"gray","underlined":"true"},{"score":{"name":"@s","objective":"counter"},"color":"gray","underlined":"true"},{"text":"  "},{"text":"氷:CT","color":"aqua","underlined":"true"},{"score":{"name":"@s","objective":"subcounter"},"color":"aqua","underlined":"true"},{"text":"  "},{"text":"闇:CT","color":"light_purple","underlined":"true"},{"score":{"name":"@s","objective":"counter_1"},"color":"light_purple","underlined":"true"},{"text":"  "},{"text":"火:CT","color":"red","underlined":"true","bold":true},{"score":{"name":"@s","objective":"counter_2"},"color":"red","underlined":"true","bold":true},{"text":"  "},{"text":"風:CT","color":"green","underlined":"true"},{"score":{"name":"@s","objective":"counter_3"},"color":"green","underlined":"true"}]
execute if entity @s[tag=023-4] run title @s actionbar ["",{"text":"無:CT","color":"gray","underlined":"true"},{"score":{"name":"@s","objective":"counter"},"color":"gray","underlined":"true"},{"text":"  "},{"text":"氷:CT","color":"aqua","underlined":"true"},{"score":{"name":"@s","objective":"subcounter"},"color":"aqua","underlined":"true"},{"text":"  "},{"text":"闇:CT","color":"light_purple","underlined":"true"},{"score":{"name":"@s","objective":"counter_1"},"color":"light_purple","underlined":"true"},{"text":"  "},{"text":"火:CT","color":"red","underlined":"true"},{"score":{"name":"@s","objective":"counter_2"},"color":"red","underlined":"true"},{"text":"  "},{"text":"風:CT","color":"green","underlined":"true","bold":true},{"score":{"name":"@s","objective":"counter_3"},"color":"green","underlined":"true","bold":true}]


scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak