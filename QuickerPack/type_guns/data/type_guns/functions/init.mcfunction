# 添加触发者队伍 用来识别开枪触发者
team add gt_fire_team

# 添加发射者 pos
scoreboard objectives add gt_self_x dummy
scoreboard objectives add gt_self_y dummy
scoreboard objectives add gt_self_z dummy

# 添加目标方向 pos
scoreboard objectives add gt_target_x dummy
scoreboard objectives add gt_target_y dummy
scoreboard objectives add gt_target_z dummy

# 检测胡萝卜钓钩右键
scoreboard objectives add gt_wither_gun minecraft.used:minecraft.carrot_on_a_stick

# 发射物存活时间
scoreboard objectives add gt_bullet_life dummy

# 苦力怕发射物爆炸时间
scoreboard objectives add gt_bullet_fuse dummy

# 右键开枪cd
scoreboard objectives add gt_wither_cd dummy
scoreboard objectives add gt_creeper_cd dummy
scoreboard objectives add gt_pig_cd dummy

# 子弹剩余数量
scoreboard objectives add gt_ammo_count dummy

# 添加装备相关计分板

scoreboard objectives add gt_health health

say type_guns init success