# 主循环
# 将相关实体添加到队伍
team join ft_team @a[team=!ft_team]
team join ft_team @e[tag=ft_mob_tag,team=!ft_team]

# 设置怪物仇恨
execute as @e[tag=ft_mob_tag,type=!player,team=ft_team] at @s run function friendly_team:mob_target_loop

# 设置怪物属性
## 禁止变为溺尸和尸壳
execute as @e[tag=ft_mob_tag,team=ft_team,nbt={HurtTime:3s}] at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.1 0.1 0.1 10 10
execute as @e[tag=ft_mob_tag,team=ft_team] run data modify entity @s DrownedConversionTime set value -1
execute as @e[tag=ft_mob_tag,team=ft_team] run data modify entity @s InWaterTime set value -1


# 旗帜循环
function friendly_team:point

# 单体防御塔cd增加1
execute as @e[tag=ft_ender_type,type=minecraft:armor_stand] at @s if entity @e[tag=,team=,type=!player,distance=..35] run scoreboard players add @s ft_tower_cd 1
# 防御塔发射子弹
function friendly_team:ender_tower
# 防御塔非递归循环
function friendly_team:ender_bullet

# 群体地震塔cd增加1
execute as @e[tag=ft_quake_type,type=minecraft:armor_stand] at @s if entity @e[tag=,team=,type=!player,distance=..25] run scoreboard players add @s ft_tower_cd 1
# 地震塔处理攻击
function friendly_team:quake_tower
# 地震塔非递归循环
function friendly_team:quake_bullet

# 防御塔清除
function friendly_team:clear_tower

