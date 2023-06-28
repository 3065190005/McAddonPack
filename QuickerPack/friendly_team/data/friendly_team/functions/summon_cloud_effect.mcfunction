# 召唤药水
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[ft_init_cloud],Owner:[0,0,0,0],Particle:"minecraft:current_down",Effects:[{Id:6,Amplifier:31,Duration:1},{Id:7,Amplifier:31,Duration:1}],Duration:6,Radius:0.01f}

# 设置药水仇恨
execute as @e[type=minecraft:area_effect_cloud,tag=ft_init_cloud] at @s run data modify entity @s Owner set from entity @e[type=!minecraft:item,tag=!ft_init_cloud,team=!ft_team,limit=1,sort=nearest,distance=..20] UUID

# 删除标签
execute as @e[type=minecraft:area_effect_cloud,tag=ft_init_cloud] run data modify entity @s Tags set value []