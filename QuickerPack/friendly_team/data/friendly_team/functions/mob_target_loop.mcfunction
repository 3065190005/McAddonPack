# 检测周围是否有怪物
execute store success score @s ft_find_mob run data get entity @e[type=!minecraft:item,tag=,team=,limit=1,sort=nearest,distance=..20] UUID[0]

# 通过药水设置仇恨
execute if entity @s[scores={ft_find_mob=1..}] run function friendly_team:summon_cloud_effect