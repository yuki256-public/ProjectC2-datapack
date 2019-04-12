replaceitem entity @s hotbar.1 minecraft:skeleton_skull{display:{Name:"{\"text\":\"同胞-ヴェックスウィング\"}",Lore:["発動:滑空","前方に突進し、大量のvexを召喚する。","CT:13"]}} 1
replaceitem entity @s armor.chest minecraft:elytra{display:{Name:"{\"text\":\"vex wings\"}"},Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1s}],HideFlags:4}
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1