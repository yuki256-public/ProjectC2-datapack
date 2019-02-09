execute store result score #039-dummy counter run data get entity @s Health 10
tp @s ~ ~ ~
execute if score #039-dummy counter matches 48..59 run summon area_effect_cloud ~ ~0.5 ~ {CustomName:"{\"text\":\"トランス\"}",Radius:0.6f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 60..95 run summon area_effect_cloud ~ ~0.5 ~ {CustomName:"{\"text\":\"トランス\"}",Radius:0.6f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 96..119 run summon area_effect_cloud ~ ~0.5 ~ {CustomName:"{\"text\":\"トランス\"}",Radius:0.6f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 120..143 run summon area_effect_cloud ~ ~0.5 ~ {CustomName:"{\"text\":\"トランス\"}",Radius:0.6f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 144..191 run summon area_effect_cloud ~ ~0.5 ~ {CustomName:"{\"text\":\"トランス\"}",Radius:0.6f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:2b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:2b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 192..239 run summon area_effect_cloud ~ ~0.5 ~ {CustomName:"{\"text\":\"トランス\"}",Radius:0.6f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:2b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 240..287 run summon area_effect_cloud ~ ~0.5 ~ {CustomName:"{\"text\":\"トランス\"}",Radius:0.6f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:7b,Amplifier:2b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 288..383 run summon area_effect_cloud ~ ~0.5 ~ {CustomName:"{\"text\":\"トランス\"}",Radius:0.6f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:2b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:3b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 384.. run summon area_effect_cloud ~ ~0.5 ~ {CustomName:"{\"text\":\"トランス\"}",Radius:0.6f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:11b,Amplifier:1b,Duration:200},{Id:7b,Amplifier:3b,Duration:1,ShowParticles:0b}]}
execute if score #039-dummy counter matches 60..191 run effect give @s haste 12 0
execute if score #039-dummy counter matches 96..287 run effect give @s speed 12 0
execute if score #039-dummy counter matches 144.. run effect give @s resistance 12 0
execute if score #039-dummy counter matches 192.. run effect give @s haste 12 1
execute if score #039-dummy counter matches 240.. run effect give @s strength 12 0
execute if score #039-dummy counter matches 288.. run effect give @s speed 12 1
execute if score #039-dummy counter matches 384.. run effect give @s regeneration 12 1