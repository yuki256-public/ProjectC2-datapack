#実行者     -> ArrowRStandB
#実行地点   -> 実行者

scoreboard players operation #RandomX counter *= #RandomA counter
scoreboard players operation #RandomX counter += #RandomB counter
scoreboard players operation #RandomX counter %= #RandomMAR counter

execute if score #RandomX counter matches 0 run summon arrow ~2 ~8 ~-2 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 1 run summon arrow ~2 ~8 ~-1 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 2 run summon arrow ~2 ~8 ~ {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 3 run summon arrow ~2 ~8 ~1 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 4 run summon arrow ~2 ~8 ~2 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 5 run summon arrow ~1 ~8 ~-2 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 6 run summon arrow ~1 ~8 ~-1 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 7 run summon arrow ~1 ~8 ~ {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 8 run summon arrow ~1 ~8 ~1 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 9 run summon arrow ~1 ~8 ~2 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 10 run summon arrow ~ ~8 ~-2 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 11 run summon arrow ~ ~8 ~-1 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 12 run summon arrow ~ ~8 ~ {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 13 run summon arrow ~ ~8 ~1 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 14 run summon arrow ~ ~8 ~2 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 15 run summon arrow ~-1 ~8 ~-2 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 16 run summon arrow ~-1 ~8 ~-1 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 17 run summon arrow ~-1 ~8 ~ {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 18 run summon arrow ~-1 ~8 ~1 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 19 run summon arrow ~-1 ~8 ~2 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 20 run summon arrow ~-2 ~8 ~-2 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 21 run summon arrow ~-2 ~8 ~-1 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 22 run summon arrow ~-2 ~8 ~ {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 23 run summon arrow ~-2 ~8 ~1 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
execute if score #RandomX counter matches 24 run summon arrow ~-2 ~8 ~2 {Motion:[0.0d,-1.0d,0.0d],Tag:["Arrow"],life:1200,CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:100}]}
