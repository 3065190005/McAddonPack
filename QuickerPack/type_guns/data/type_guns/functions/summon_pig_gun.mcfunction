# 将开枪cd减少1 tick
execute as @a run scoreboard players remove @s gt_pig_cd 1
# 将小于0的开枪cd重置为0，防止溢出为正整数
execute as @e[scores={gt_pig_cd=..0}] at @s run scoreboard players set @s gt_pig_cd 0


# 检测拿到相关物品且满足子弹和cd条件的玩家右键 并加入触发者队伍
execute as @e[scores={gt_wither_gun=1..,gt_pig_cd=..0,gt_ammo_count=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_pig_fire]}}}] run team join gt_fire_team @s


# 重置攻击cd
execute as @e[team=gt_fire_team,scores={gt_pig_cd=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_pig_fire]}}}] at @s run scoreboard players set @s gt_pig_cd 1
# 每发减少弹药量
execute as @e[team=gt_fire_team,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_pig_fire]}}}] run clear @s minecraft:gunpowder{Tags:[gt_ammo]} 1


# 创建目标方向
execute as @e[team=gt_fire_team,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_pig_fire]}}}] at @s run summon minecraft:armor_stand ^ ^ ^60 {Invisible:1,NoGravity:1,Invulnerable:1,PersistenceRequired:0,Tags:[gt_wither_target]}

# 获取触发者pos
execute as @e[team=gt_fire_team] at @s store result score @s gt_self_x run data get entity @s Pos[0] 1000
execute as @e[team=gt_fire_team] at @s store result score @s gt_self_y run data get entity @s Pos[1] 1000
execute as @e[team=gt_fire_team] at @s store result score @s gt_self_z run data get entity @s Pos[2] 1000

# 获取目标pos
execute as @e[team=gt_fire_team] at @s store result score @s gt_target_x run data get entity @e[limit=1,tag=gt_wither_target] Pos[0] 1000
execute as @e[team=gt_fire_team] at @s store result score @s gt_target_y run data get entity @e[limit=1,tag=gt_wither_target] Pos[1] 1000
execute as @e[team=gt_fire_team] at @s store result score @s gt_target_z run data get entity @e[limit=1,tag=gt_wither_target] Pos[2] 1000

# 清除无效目标
kill @e[tag=gt_wither_target]

# 计算pos偏移量
execute as @e[team=gt_fire_team] at @s run scoreboard players operation @s gt_target_x -= @s gt_self_x
execute as @e[team=gt_fire_team] at @s run scoreboard players operation @s gt_target_y -= @s gt_self_y
execute as @e[team=gt_fire_team] at @s run scoreboard players operation @s gt_target_z -= @s gt_self_z


# 发射小猪枪箭
execute as @e[team=gt_fire_team,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_pig_fire]}}}] at @s facing entity @s feet run summon minecraft:arrow ^ ^1.6 ^ {Tags:[gt_init_wither],Glowing:1,crit:0,damage:0.3,pickup:0,PortalCooldown:5}

# 将偏移量赋值给发射物
execute as @e[tag=gt_init_wither] store result score @s gt_target_x run scoreboard players get @e[team=gt_fire_team,limit=1] gt_target_x
execute as @e[tag=gt_init_wither] store result score @s gt_target_y run scoreboard players get @e[team=gt_fire_team,limit=1] gt_target_y
execute as @e[tag=gt_init_wither] store result score @s gt_target_z run scoreboard players get @e[team=gt_fire_team,limit=1] gt_target_z


# 更改 初始化标签 为 循环标签 
execute as @e[tag=gt_init_wither] run data modify entity @s Tags set value [gt_wither_bullet]


# 开枪声音
execute as @e[team=gt_fire_team,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_pig_fire]}}}] at @s run playsound minecraft:block.end_portal_frame.fill player @s


# 退出触发者队伍
execute as @e[team=gt_fire_team] run team leave @s