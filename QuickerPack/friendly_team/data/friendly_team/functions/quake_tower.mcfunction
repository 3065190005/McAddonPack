# 地震塔待机动画
execute as @e[tag=ft_quake_type,type=minecraft:armor_stand] at @s run particle minecraft:sneeze ~ ~0.5 ~ 0 -0.5 0 0 8

# 地震塔攻击动画
execute as @e[tag=ft_quake_type,type=minecraft:armor_stand] at @s if entity @e[tag=,team=,type=!player,distance=..25] run tp @s ~ ~ ~ facing ^0.6 ^ ^

# 地震塔发检测目标
execute as @e[scores={ft_tower_cd=175..},tag=ft_quake_type,limit=1] at @s run scoreboard players set @s ft_tower_fire 1

# 地震塔创建攻击
execute as @e[scores={ft_tower_fire=1},tag=ft_quake_type] at @s run execute as @e[distance=..25,tag=,team=,type=!player] at @s run summon minecraft:evoker_fangs ~ ~ ~

# 发射音效
execute as @e[scores={ft_tower_fire=1},tag=ft_quake_type] at @s run playsound minecraft:entity.zombie.attack_iron_door player @a
# 发射特效
execute as @e[scores={ft_tower_fire=1},tag=ft_quake_type] at @s run particle minecraft:instant_effect ~ ~ ~ 0.5 1.6 0.5 10 200

# 重置攻击
execute as @e[scores={ft_tower_fire=1},tag=ft_quake_type] run scoreboard players set @s ft_tower_cd 0
execute as @e[scores={ft_tower_fire=1},tag=ft_quake_type] run scoreboard players set @s ft_tower_fire 0


# 递归
execute if entity @e[scores={ft_tower_cd=175..},tag=ft_quake_type,limit=1] run function friendly_team:quake_tower