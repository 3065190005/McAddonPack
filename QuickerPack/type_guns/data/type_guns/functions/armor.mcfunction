# 高级头 普通版
execute as @a[scores={gt_health=11..},nbt={Inventory:[{Slot:103b,id:"minecraft:netherite_helmet",Count:1b,tag:{Tags:[gt_helmet]}}]}] at @s run effect give @s minecraft:night_vision 12 1 true

# 高级头 低血版
execute as @a[scores={gt_health=..10},nbt={Inventory:[{Slot:103b,id:"minecraft:netherite_helmet",Count:1b,tag:{Tags:[gt_helmet]}}]}] at @s run effect give @s minecraft:night_vision 12 1 true
execute as @a[scores={gt_health=..10},nbt={Inventory:[{Slot:103b,id:"minecraft:netherite_helmet",Count:1b,tag:{Tags:[gt_helmet]}}]}] at @s run effect give @s minecraft:regeneration 3 1 true
execute as @a[scores={gt_health=..10},nbt={Inventory:[{Slot:103b,id:"minecraft:netherite_helmet",Count:1b,tag:{Tags:[gt_helmet]}}]}] at @s run effect give @e[distance=..20,type=!player,tag=,team=] minecraft:glowing 3 0 true


# 高级盔甲 普通版
execute as @a[scores={gt_health=11..},nbt={Inventory:[{Slot:102b,id:"minecraft:netherite_chestplate",Count:1b,tag:{Tags:[gt_chestplate]}}]}] at @s run effect give @s minecraft:strength 3 0 true
execute as @a[scores={gt_health=11..},nbt={Inventory:[{Slot:102b,id:"minecraft:netherite_chestplate",Count:1b,tag:{Tags:[gt_chestplate]}}]}] at @s run effect give @s minecraft:haste 3 0 true

# 高级盔甲 低血版
execute as @a[scores={gt_health=..10},nbt={Inventory:[{Slot:102b,id:"minecraft:netherite_chestplate",Count:1b,tag:{Tags:[gt_chestplate]}}]}] at @s run effect give @s minecraft:strength 3 1 true
execute as @a[scores={gt_health=..10},nbt={Inventory:[{Slot:102b,id:"minecraft:netherite_chestplate",Count:1b,tag:{Tags:[gt_chestplate]}}]}] at @s run effect give @s minecraft:haste 3 1 true
execute as @a[scores={gt_health=..10},nbt={Inventory:[{Slot:102b,id:"minecraft:netherite_chestplate",Count:1b,tag:{Tags:[gt_chestplate]}}]}] at @s run effect give @e[distance=..20,type=!player,tag=,team=] minecraft:poison 3 1 true
execute as @a[scores={gt_health=..10},nbt={Inventory:[{Slot:102b,id:"minecraft:netherite_chestplate",Count:1b,tag:{Tags:[gt_chestplate]}}]}] at @s run effect give @e[distance=..20,type=!player,tag=,team=] minecraft:wither 3 1 true


# 高级护腿 普通版
execute as @a[scores={gt_health=11..},nbt={Inventory:[{Slot:101b,id:"minecraft:netherite_leggings",Count:1b,tag:{Tags:[gt_leggings]}}]}] at @s run effect give @s minecraft:speed 3 0 true

# 高级护腿 低血版
execute as @a[scores={gt_health=..10},nbt={Inventory:[{Slot:101b,id:"minecraft:netherite_leggings",Count:1b,tag:{Tags:[gt_leggings]}}]}] at @s run effect give @s minecraft:speed 3 1 true
execute as @a[scores={gt_health=..10},nbt={Inventory:[{Slot:101b,id:"minecraft:netherite_leggings",Count:1b,tag:{Tags:[gt_leggings]}}]}] at @s run effect give @s minecraft:resistance 3 0 true
execute as @a[scores={gt_health=..10},nbt={Inventory:[{Slot:101b,id:"minecraft:netherite_leggings",Count:1b,tag:{Tags:[gt_leggings]}}]}] at @s run effect give @e[distance=..20,type=!player,tag=,team=] minecraft:slowness 3 1 true
execute as @a[scores={gt_health=..10},nbt={Inventory:[{Slot:101b,id:"minecraft:netherite_leggings",Count:1b,tag:{Tags:[gt_leggings]}}]}] at @s run effect give @e[distance=..20,type=!player,tag=,team=] minecraft:weakness 3 0 true


# 高级靴子 普通版
execute as @a[scores={gt_health=11..},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",Count:1b,tag:{Tags:[gt_boots]}}]}] at @s run effect give @s minecraft:jump_boost 3 0 true

# 高级靴子 低血版
execute as @a[scores={gt_health=..10},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",Count:1b,tag:{Tags:[gt_boots]}}]}] at @s run effect give @s minecraft:jump_boost 3 2 true
execute as @a[scores={gt_health=..10},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",Count:1b,tag:{Tags:[gt_boots]}}]}] at @s if entity @s[nbt=!{FallDistance:0.0f}] unless block ~ ~-3 ~ air run effect give @s minecraft:slow_falling 2 0 true
execute as @a[scores={gt_health=..10},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",Count:1b,tag:{Tags:[gt_boots]}}]}] at @s if entity @s[nbt=!{FallDistance:0.0f}] unless block ~ ~-2 ~ air run effect give @s minecraft:slow_falling 2 0 true
execute as @a[scores={gt_health=..10},nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",Count:1b,tag:{Tags:[gt_boots]}}]}] at @s if entity @s[nbt=!{FallDistance:0.0f}] unless block ~ ~-1 ~ air run effect give @s minecraft:slow_falling 2 0 true
