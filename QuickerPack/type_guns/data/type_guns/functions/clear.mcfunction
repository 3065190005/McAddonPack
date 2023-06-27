# 将偏移量赋值给motion，一直移动
execute as @e[tag=gt_wither_bullet] at @s store result entity @s Motion[0] double 0.0001 run scoreboard players get @s gt_target_x
execute as @e[tag=gt_wither_bullet] at @s store result entity @s Motion[1] double 0.0001 run scoreboard players get @s gt_target_y
execute as @e[tag=gt_wither_bullet] at @s store result entity @s Motion[2] double 0.0001 run scoreboard players get @s gt_target_z

# 每tick添加存活时间
scoreboard players add @e[tag=gt_wither_bullet] gt_bullet_life 50

# 存活时间大于10000则播放清除特效
execute as @e[tag=gt_wither_bullet,scores={gt_bullet_life=10000..}] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1

# 杀死存活时间大于10000的发射物
kill @e[tag=gt_wither_bullet,scores={gt_bullet_life=10000..},type=!arrow]

# 清除无用弓箭
kill @e[tag=gt_wither_bullet,type=arrow,nbt={PortalCooldown:0}]

# 设置凋零枪和苦力怕枪的特效
execute as @e[tag=gt_wither_bullet,type=armor_stand] at @s run particle minecraft:angry_villager ^ ^0.6 ^ 0.05 0.05 0.05 10 10
execute as @e[tag=gt_wither_bullet,type=minecraft:wither_skull] at @s run particle minecraft:witch ^ ^ ^ 0.001 0.001 0.001 1000 30

# 检测苦力怕枪发射物是否该爆炸
execute as @e[tag=gt_wither_bullet,type=armor_stand] at @s run scoreboard players add @s gt_bullet_fuse 150
execute as @e[tag=gt_wither_bullet,type=armor_stand,scores={gt_bullet_fuse=10000..}] at @s run summon creeper ^ ^ ^ {Fuse:0,ignited:1,NoAi:1,ExplosionRadius:4,powered:1}
execute as @e[tag=gt_wither_bullet,type=armor_stand,scores={gt_bullet_fuse=10000..}] run kill @s