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


