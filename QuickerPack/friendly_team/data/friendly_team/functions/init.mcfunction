# 创建队伍 防止怪物攻击玩家
team add ft_team

# 保存uuid
scoreboard objectives add ft_uuid0 dummy
scoreboard objectives add ft_uuid1 dummy
scoreboard objectives add ft_uuid2 dummy
scoreboard objectives add ft_uuid3 dummy
scoreboard objectives add ft_find_mob dummy

# 旗帜初始化
scoreboard objectives add ft_mob_point dummy
scoreboard objectives add ft_player_set minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ft_point_set minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ft_cancel_set minecraft.used:minecraft.carrot_on_a_stick


# 防御塔开火
scoreboard objectives add ft_tower_cd dummy
scoreboard objectives add ft_tower_fire dummy

# 清除防御塔
scoreboard objectives add ft_tower_clear minecraft.used:minecraft.carrot_on_a_stick

# 防御塔存目标储血量
scoreboard objectives add ft_bt_health dummy

# 防御塔子弹伤害
scoreboard objectives add ft_bt_damage dummy

say friendly_team_inited