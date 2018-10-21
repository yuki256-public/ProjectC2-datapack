#実行者     -> jobNumber = 032
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/032/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/032/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/032/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"サンダーコメット\",\"color\":\"yellow\"}"}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/032/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ウルフマイスター\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/032/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"チェーンヘルハウンド\"}"}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/032/skill/3/0


scoreboard players reset @s sneak
