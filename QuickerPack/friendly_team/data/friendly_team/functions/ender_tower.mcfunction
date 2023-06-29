# 防御塔转向
execute as @e[tag=ft_ender_type,type=minecraft:armor_stand] at @s facing entity @e[type=!player,tag=,team=,distance=..35,sort=furthest] feet run tp @s ~ ~ ~ facing ^ ^ ^0.1

# 防御塔待机动画
execute as @e[tag=ft_ender_type,type=minecraft:armor_stand] at @s run particle minecraft:ash ~ ~ ~ 0.2 0.3 0.2 10 20

# 防御塔发检测目标
execute as @e[scores={ft_tower_cd=10..},tag=ft_ender_type,limit=1] at @s run scoreboard players set @s ft_tower_fire 1
# 防御塔创建子弹
execute as @e[scores={ft_tower_fire=1},tag=ft_ender_type] at @s run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:slime_block,Count:1}],Tags:[ft_ender_bt_init],PortalCooldown:200,Invisible:1,Invulnerable:1,NoGravity:1,Silent:1,Marker:1,NoBasePlate:1,Small:1}
execute as @e[scores={ft_tower_fire=1},tag=ft_ender_type] at @s run tp @e[tag=ft_ender_bt_init] @s
# 发射音效
execute as @e[scores={ft_tower_fire=1},tag=ft_ender_type] at @s run playsound minecraft:block.ancient_debris.break player @a
# 发射特效
execute as @e[scores={ft_tower_fire=1},tag=ft_ender_type] at @s run particle minecraft:item_slime ^ ^1.0 ^0.5 0 0 0 10 10
# 重置攻击
execute as @e[scores={ft_tower_fire=1},tag=ft_ender_type] run scoreboard players set @s ft_tower_cd 0
execute as @e[scores={ft_tower_fire=1},tag=ft_ender_type] run scoreboard players set @s ft_tower_fire 0
# 子弹取消初始化标签
execute as @e[tag=ft_ender_bt_init] run data modify entity @s Tags set value [ft_ender_bt]

# 递归 处理其他可发射防御塔
execute if entity @e[scores={ft_tower_cd=10..},tag=ft_ender_type,limit=1] run function friendly_team:ender_tower

## 每次tick只能处理一个子弹发射，递归处理所有子弹发射，当10tick过后第一个处理的会再到10tick导致如果有超过10个同时发射，第11个往后都不会进行判断，递归让每tick处理所有子弹发射