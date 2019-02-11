clear @s tipped_arrow
execute if entity @s[scores={counter_1=0}] run replaceitem entity @s weapon.offhand minecraft:tipped_arrow{display:{Name:"{\"text\":\"フローズンダイヤモンド\"}",Lore:["古代より在る永久凍土の氷石＿","着弾地点に氷の魔法陣を展開。"]},CustomPotionEffects:[{Id:26b,Amplifier:97b,Duration:1,ShowParticles:0b}],CustomPotionColor:699040,HideFlags:32,Enchantments:[{}]}
execute if entity @s[scores={counter_1=0}] run tellraw @s {"text":"古代より在る永久凍土の氷石-フローズンダイヤモンド","color":"aqua","underlined":"true"}
execute if entity @s[scores={counter_1=0}] run scoreboard players add @s subcounter 5
execute if entity @s[scores={counter_1=1..49}] run replaceitem entity @s weapon.offhand minecraft:tipped_arrow{display:{Name:"{\"text\":\"カーディナルフェザー\"}",Lore:["紅冠鳥の羽の元に＿","矢の後方から真紅の鳥を喚ぶ。"]},CustomPotionEffects:[{Id:27b,Amplifier:97b,Duration:1,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:80,ShowParticles:0b}],CustomPotionColor:16733525,HideFlags:32,Enchantments:[{}]}
execute if entity @s[scores={counter_1=1..49}] run tellraw @s {"text":"紅冠鳥の羽の元に-カーディナルフェザー","color":"red","underlined":"true"}
execute if entity @s[scores={counter_1=1..49}] run scoreboard players add @s subcounter 6
execute if entity @s[scores={counter_1=50..99}] run replaceitem entity @s weapon.offhand minecraft:tipped_arrow{display:{Name:"{\"text\":\"アビスインフェルノ\"}",Lore:["深淵の煉獄へ誘う炎＿","着弾地点に巨大な炎の弾を生み出して爆散。"]},CustomPotionEffects:[{Id:26b,Amplifier:97b,Duration:0,ShowParticles:0b}],CustomPotionColor:11141290,HideFlags:32,Enchantments:[{}]}
execute if entity @s[scores={counter_1=50..99}] run tellraw @s {"text":"深淵の煉獄へ誘う炎-アビスインフェルノ","color":"dark_purple","underlined":"true"}
execute if entity @s[scores={counter_1=50..99}] run scoreboard players add @s subcounter 9
execute if entity @s[scores={counter_1=100}] run replaceitem entity @s weapon.offhand minecraft:tipped_arrow{display:{Name:"{\"text\":\"クリムゾンサンダーボルト\"}",Lore:["災厄-真紅の稲妻-は、破壊の限りを尽くす＿","着弾地点に真紅の稲妻を召喚。"]},CustomPotionEffects:[{Id:27b,Amplifier:97b,Duration:0,ShowParticles:0b}],CustomPotionColor:11141120,HideFlags:32,Enchantments:[{}]}
execute if entity @s[scores={counter_1=100}] run tellraw @s {"text":"真紅の稲妻-クリムゾンサンダーボルト","color":"dark_red","underlined":"true"}
execute if entity @s[scores={counter_1=100}] run scoreboard players add @s subcounter 13

particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 3 1000 force
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 3 2
playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 3 1
playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 3 1
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 3 2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 3 0.5
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 3 0.5
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 3 0.5

scoreboard players set @s counter 0
scoreboard players set @s counter_1 0
scoreboard players set @s counter_2 25
scoreboard players operation @s counter_2 -= @s subcounter
clear @s minecraft:carrot_on_a_stick
tag @s add 041-success