# 获取召唤者怪物蛋
give @p minecraft:pig_spawn_egg{display:{Name:"[{\"text\":\"Bot生成蛋\"}]",Lore:["{\"text\":\"生成一个近战友善生物\"},{\"text\":\"清理区域:15\"}"]},EntityTag:{id:zombie,HandItems:[{id:"minecraft:iron_axe",Count:1b,Damage:0s},{id:"minecraft:iron_sword",Count:1b,Damage:0s}],HandDropChances:[0.0f,0.0f],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,Damage:0s},{id:"minecraft:iron_leggings",Count:1b,Damage:0s},{id:"minecraft:iron_chestplate",Count:1b,Damage:0s},{id:"minecraft:player_head",Count:1b,Damage:0s}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Tags:[ft_mob_tag],CustomName:"[{\"text\":\"Bot\"}]",CustomNameVisible:1b,Silent:1b,IsBaby:0,CanBreakDoors:0,Attributes:[{Name:"generic.max_health",Base:60f},{Name:"generic.follow_range",Base:20f},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0.35f}],Health:60f,PersistenceRequired:1}} 1
give @p minecraft:cow_spawn_egg{display:{Name:"[{\"text\":\"Archer生成蛋\"}]",Lore:["{\"text\":\"生成一个远程友善生物\"},{\"text\":\"清理区域:15\"}"]},EntityTag:{id:drowned,HandItems:[{id:"minecraft:trident",Count:1b,Damage:0s},{id:"minecraft:iron_hoe",Count:1b,Damage:0s}],HandDropChances:[0.0f,0.0f],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,Damage:0s},{id:"minecraft:iron_leggings",Count:1b,Damage:0s},{id:"minecraft:iron_chestplate",Count:1b,Damage:0s},{id:"minecraft:player_head",Count:1b,Damage:0s}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Tags:[ft_mob_tag],CustomName:"[{\"text\":\"Archer\"}]",CustomNameVisible:1b,Silent:1b,IsBaby:0,CanBreakDoors:0,Attributes:[{Name:"generic.max_health",Base:60f},{Name:"generic.follow_range",Base:20f},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0.35f}],Health:60f,PersistenceRequired:1}} 1

# 获得控制旗帜
give @a minecraft:carrot_on_a_stick{CustomModelData:630,Tags:[ft_player_flag],Unbreakable:1,display:{Name:"[{\"text\":\"跟随控制器\"}]",Lore:["{\"text\":\"右键转换为跟随模式\"}"]}} 1
give @a minecraft:carrot_on_a_stick{CustomModelData:631,Tags:[ft_point_flag],Unbreakable:1,display:{Name:"[{\"text\":\"据守控制器\"}]",Lore:["{\"text\":\"右键转换为据守模式\"}"]}} 1
give @a minecraft:carrot_on_a_stick{CustomModelData:632,Tags:[ft_cancel_flag],Unbreakable:1,display:{Name:"[{\"text\":\"游走控制器\"}]",Lore:["{\"text\":\"右键转换为游走模式\"}"]}} 1


# 获取单体防御塔
give @p minecraft:chicken_spawn_egg{display:{Name:"[{\"text\":\"防御塔\"}]",Lore:["{\"text\":\"生成一个单体伤害防御塔\"}","{\"text\":\"存在时长:120s\"}","{\"text\":\"攻击范围:35\"}","{\"text\":\"攻击伤害:3\"}","{\"text\":\"攻击间隔:10/tick\"}"]},EntityTag:{id:armor_stand,PortalCooldown:2400,ArmorItems:[{},{},{},{id:dragon_head,Count:1}],Tags:[ft_ender_type],Invisible:1,Glowing:1,Invulnerable:1,NoGravity:1,Silent:1,Marker:1,NoBasePlate:1,Small:1}} 1

# 获取单体防御塔（无限时长）
give @p minecraft:chicken_spawn_egg{Enchantments:[{id:Infinity,lvl:1}],display:{Name:"[{\"text\":\"防御塔\"}]",Lore:["{\"text\":\"生成一个单体伤害防御塔\"}","{\"text\":\"存在时长:永久\"}","{\"text\":\"攻击范围:35\"}","{\"text\":\"攻击伤害:3\"}","{\"text\":\"攻击间隔:10/tick\"}"]},EntityTag:{id:armor_stand,PortalCooldown:-1,ArmorItems:[{},{},{},{id:dragon_head,Count:1}],Tags:[ft_ender_type],Invisible:1,Glowing:1,Invulnerable:1,NoGravity:1,Silent:1,Marker:1,NoBasePlate:1,Small:1}} 1

# 获取群体地震塔
give @p minecraft:cat_spawn_egg{display:{Name:"[{\"text\":\"地震塔\"}]",Lore:["{\"text\":\"生成一个范围群体伤害地震塔\"}","{\"text\":\"存在时长:160s\"}","{\"text\":\"攻击范围:25\"}","{\"text\":\"攻击伤害:6/每个实体\"}","{\"text\":\"攻击间隔:175/tick\"}"]},EntityTag:{id:armor_stand,PortalCooldown:3200,ArmorItems:[{},{},{},{id:player_head,Count:1,Damage:0s,tag:{SkullOwner:"MHF_Present2"}}],Tags:[ft_quake_type],Invisible:1,Glowing:1,Invulnerable:1,NoGravity:1,Silent:1,Marker:1,NoBasePlate:1,Small:0}} 1

# 获取群体地震塔（无限时长）
give @p minecraft:cat_spawn_egg{Enchantments:[{id:Infinity,lvl:1}],display:{Name:"[{\"text\":\"地震塔\"}]",Lore:["{\"text\":\"生成一个范围群体伤害地震塔\"}","{\"text\":\"存在时长:永久\"}","{\"text\":\"攻击范围:25\"}","{\"text\":\"攻击伤害:6/每个实体\"}","{\"text\":\"攻击间隔:175/tick\"}"]},EntityTag:{id:armor_stand,PortalCooldown:-1,ArmorItems:[{},{},{},{id:player_head,Count:1,Damage:0s,tag:{SkullOwner:"MHF_Present2"}}],Tags:[ft_quake_type],Invisible:1,Glowing:1,Invulnerable:1,NoGravity:1,Silent:1,Marker:1,NoBasePlate:1,Small:0}} 1

# 清除防御塔
give @a minecraft:carrot_on_a_stick{CustomModelData:633,Tags:[ft_clear_t],Unbreakable:1,display:{Name:"[{\"text\":\"清除器\"}]",Lore:["{\"text\":\"右键清除所有防御塔\"}"]}} 1