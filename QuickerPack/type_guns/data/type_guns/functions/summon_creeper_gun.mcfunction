execute as @a run scoreboard players remove @s gt_creeper_cd 1
execute as @e[scores={gt_creeper_cd=..0}] at @s run scoreboard players set @s gt_creeper_cd 0


execute as @e[scores={gt_wither_gun=1..,gt_creeper_cd=..0,gt_ammo_count=8..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_creeper_fire]}}}] run team join gt_fire_team @s


execute as @e[team=gt_fire_team,scores={gt_creeper_cd=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_creeper_fire]}}}] at @s run scoreboard players set @s gt_creeper_cd 30
execute as @e[team=gt_fire_team,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_creeper_fire]}}}] run clear @s minecraft:gunpowder{Tags:[gt_ammo]} 8


execute as @e[team=gt_fire_team,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_creeper_fire]}}}] at @s run summon minecraft:armor_stand ^ ^ ^5 {Invisible:1,NoGravity:1,Invulnerable:1,PersistenceRequired:0,Tags:[gt_wither_target]}

execute as @e[team=gt_fire_team] at @s store result score @s gt_self_x run data get entity @s Pos[0] 1000
execute as @e[team=gt_fire_team] at @s store result score @s gt_self_y run data get entity @s Pos[1] 1000
execute as @e[team=gt_fire_team] at @s store result score @s gt_self_z run data get entity @s Pos[2] 1000

execute as @e[team=gt_fire_team] at @s store result score @s gt_target_x run data get entity @e[limit=1,tag=gt_wither_target] Pos[0] 1000
execute as @e[team=gt_fire_team] at @s store result score @s gt_target_y run data get entity @e[limit=1,tag=gt_wither_target] Pos[1] 1000
execute as @e[team=gt_fire_team] at @s store result score @s gt_target_z run data get entity @e[limit=1,tag=gt_wither_target] Pos[2] 1000

kill @e[tag=gt_wither_target]

execute as @e[team=gt_fire_team] at @s run scoreboard players operation @s gt_target_x -= @s gt_self_x
execute as @e[team=gt_fire_team] at @s run scoreboard players operation @s gt_target_y -= @s gt_self_y
execute as @e[team=gt_fire_team] at @s run scoreboard players operation @s gt_target_z -= @s gt_self_z


execute as @e[team=gt_fire_team,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_creeper_fire]}}}] at @s facing entity @s eyes run summon minecraft:armor_stand ^ ^ ^ {Tags:[gt_init_wither],ArmorItems:[{},{},{},{id:creeper_head,Count:1}],Invisible:1,NoBasePlate:1,Small:1,Invulnerable:1}

execute as @e[tag=gt_init_wither] store result score @s gt_target_x run scoreboard players get @e[team=gt_fire_team,limit=1] gt_target_x
execute as @e[tag=gt_init_wither] store result score @s gt_target_y run scoreboard players get @e[team=gt_fire_team,limit=1] gt_target_y
execute as @e[tag=gt_init_wither] store result score @s gt_target_z run scoreboard players get @e[team=gt_fire_team,limit=1] gt_target_z


execute as @e[tag=gt_init_wither] run data modify entity @s Tags set value [gt_wither_bullet]


execute as @e[team=gt_fire_team,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[gt_creeper_fire]}}}] at @s run playsound minecraft:entity.blaze.shoot player @s


execute as @e[team=gt_fire_team] run team leave @s