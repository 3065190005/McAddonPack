# 获取当前玩家子弹总数量
execute as @e[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_wither_fire]}}}] store result score @s gt_ammo_count run clear @s minecraft:gunpowder{Tags:[gt_ammo]} 0
execute as @e[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_creeper_fire]}}}] store result score @s gt_ammo_count run clear @s minecraft:gunpowder{Tags:[gt_ammo]} 0
execute as @e[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_pig_fire]}}}] store result score @s gt_ammo_count run clear @s minecraft:gunpowder{Tags:[gt_ammo]} 0

# 如果玩家子弹和cd条件满足 设置字体
execute as @e[scores={gt_wither_cd=..0,gt_ammo_count=3..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_wither_fire]}}}] run title @s actionbar [{"text":"右键射击 -剩余子弹：","color":"red","itclic":"true"},{"score":{"name":"*","objective":"gt_ammo_count"}}]
execute as @e[scores={gt_creeper_cd=..0,gt_ammo_count=8..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_creeper_fire]}}}] run title @s actionbar [{"text":"右键射击 -剩余子弹：","color":"red","itclic":"true"},{"score":{"name":"*","objective":"gt_ammo_count"}}]
execute as @e[scores={gt_wither_cd=..0,gt_ammo_count=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_pig_fire]}}}] run title @s actionbar [{"text":"右键射击 -剩余子弹：","color":"red","itclic":"true"},{"score":{"name":"*","objective":"gt_ammo_count"}}]

# 如果玩家cd不满足 设置字体
execute as @e[scores={gt_wither_cd=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_wither_fire]}}}] run title @s actionbar [{"text":"射击冷却：","color":"red","itclic":"true"},{"score":{"name":"*","objective":"gt_wither_cd"}}]
execute as @e[scores={gt_creeper_cd=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_creeper_fire]}}}] run title @s actionbar [{"text":"射击冷却：","color":"red","itclic":"true"},{"score":{"name":"*","objective":"gt_creeper_cd"}}]
execute as @e[scores={gt_creeper_cd=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_pig_fire]}}}] run title @s actionbar [{"text":"射击冷却：","color":"red","itclic":"true"},{"score":{"name":"*","objective":"gt_creeper_cd"}}]

# 如果玩家子弹不足单发消耗量 设置字体
execute as @e[scores={gt_ammo_count=..2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_wither_fire]}}}] run title @s actionbar [{"text":"子弹不足","color":"red","itclic":"true"}]
execute as @e[scores={gt_ammo_count=..7},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_creeper_fire]}}}] run title @s actionbar [{"text":"子弹不足","color":"red","itclic":"true"}]
execute as @e[scores={gt_ammo_count=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_pig_fire]}}}] run title @s actionbar [{"text":"子弹不足","color":"red","itclic":"true"}]