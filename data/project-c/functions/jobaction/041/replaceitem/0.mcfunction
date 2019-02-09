clear @s minecraft:carrot_on_a_stick
execute unless entity @s[scores={subcounter=1..}] run scoreboard players set @s subcounter 1
replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"紅撓杖\"}",Lore:["発動:右クリック","魔力の籠もった矢を錬成する。","チャージの度合いによって4種類まで変化。"]},Damage:1,Enchantments:[{}]}
execute store result entity @s Inventory[0].tag.Damage int 1 run scoreboard players get @s subcounter
scoreboard players set @s counter_2 25
scoreboard players operation @s counter_2 -= @s subcounter
execute if entity @s[scores={drop=-1..}] run scoreboard players reset @s drop