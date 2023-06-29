# 子弹循环tp
execute as @e[tag=ft_ender_bt] at @s run tp @s ^ ^ ^0.5


# 清除撞墙子弹 【关闭】
# execute as @e[tag=ft_ender_bt] at @s unless block ~ ~1 ~ air run kill @s


# 清除过期子弹
execute as @e[tag=ft_ender_bt,nbt={PortalCooldown:0}] at @s run kill @s


# 计分板扣血
## 获取敌人血量
execute as @e[tag=ft_ender_bt] at @s if entity @e[distance=..1,tag=,team=,type=!player] store result score @s ft_bt_health run data get entity @e[distance=..1,tag=,team=,type=!player,limit=1] Health
## 子弹伤害固定为 2
execute as @e[tag=ft_ender_bt] at @s if entity @e[distance=..1,tag=,team=,type=!player] run scoreboard players set @s ft_bt_damage 2
## 敌人血量减少伤害
execute as @e[tag=ft_ender_bt] at @s if entity @e[distance=..1,tag=,team=,type=!player] store result score @s ft_bt_health run scoreboard players operation @s ft_bt_health -= @s ft_bt_damage
## 将计算后的血量赋值给敌人
execute as @e[tag=ft_ender_bt] at @s if entity @e[distance=..1,tag=,team=,type=!player] store result entity @e[distance=..1,tag=,team=,type=!player,limit=1] Health long 1 run scoreboard players get @s ft_bt_health

# 子弹命中敌人伤害特效
execute as @e[tag=ft_ender_bt] at @s if entity @e[distance=..1,tag=,team=,type=!player] run effect give @e[distance=..1,tag=,team=,type=!player] minecraft:wither 1 2 true
execute as @e[tag=ft_ender_bt] at @s if entity @e[distance=..1,tag=,team=,type=!player] run effect give @e[distance=..1,tag=,team=,type=!player] minecraft:poison 1 2 true

# 子弹命中敌人音效
execute as @e[tag=ft_ender_bt] at @s if entity @e[distance=..1,tag=,team=,type=!player] run playsound minecraft:entity.player.hurt player @a

# 清除子弹
execute as @e[tag=ft_ender_bt] at @s if entity @e[distance=..1,tag=,team=,type=!player] run kill @s


# 清理过期防御塔
execute as @e[tag=ft_ender_type,nbt={PortalCooldown:0}] at @s run particle minecraft:explosion ~ ~1 ~ 1 1 1 1 10
execute as @e[tag=ft_ender_type,nbt={PortalCooldown:0}] at @s run playsound minecraft:entity.enderman.teleport player @a
execute as @e[tag=ft_ender_type,nbt={PortalCooldown:0}] at @s run kill @s