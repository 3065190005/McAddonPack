# 跟随模式
execute as @e[scores={ft_player_set=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[ft_player_flag]}}}] run scoreboard players set @e[scores={ft_mob_point=1}] ft_mob_point 0
execute as @e[scores={ft_player_set=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[ft_player_flag]}}}] run scoreboard players set @s ft_mob_point 1
execute as @e[scores={ft_player_set=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[ft_player_flag]}}}] run tellraw @a {"text":"【友好团队】<保护者设置为跟随>","hoverEvent":{"action":"show_text","value":{"selector":"@s"}}}
execute as @e[scores={ft_player_set=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[ft_player_flag]}}}] at @s run playsound minecraft:entity.player.levelup player @s


# 游走模式
execute as @e[scores={ft_cancel_set=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[ft_cancel_flag]}}}] run scoreboard players set @e[scores={ft_mob_point=1}] ft_mob_point 0
execute as @e[scores={ft_cancel_set=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[ft_cancel_flag]}}}] run tellraw @a {"text":"【友好团队】<保护者设置为游走>","hoverEvent":{"action":"show_text","value":{"selector":"@s"}}}
execute as @e[scores={ft_cancel_set=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[ft_cancel_flag]}}}] at @s run playsound minecraft:entity.player.levelup player @s


# 据守模式
execute as @e[scores={ft_point_set=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[ft_point_flag]}}}] run scoreboard players set @e[scores={ft_mob_point=1}] ft_mob_point 0
kill @e[type=armor_stand,tag=ft_point_model,scores={ft_mob_point=0}]
execute as @e[scores={ft_point_set=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[ft_point_flag]}}}] at @s run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:beacon,Count:1}],Tags:[ft_point_model],Invisible:1,Glowing:1,Invulnerable:1,NoGravity:1,Silent:1,Marker:1,NoBasePlate:1,Small:1}
execute as @e[scores={ft_point_set=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[ft_point_flag]}}}] run tellraw @a {"text":"【友好团队】<保护者设置为据守>","hoverEvent":{"action":"show_text","value":{"selector":"@s"}}}
execute as @e[scores={ft_point_set=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[ft_point_flag]}}}] run scoreboard players set @e[type=armor_stand,tag=ft_point_model] ft_mob_point 1
execute as @e[scores={ft_point_set=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[ft_point_flag]}}}] at @s run playsound minecraft:entity.player.levelup player @s


# 重置分数
execute as @e[scores={ft_cancel_set=1..}] run scoreboard players set @s ft_cancel_set 0
execute as @e[scores={ft_player_set=1..}] run scoreboard players set @s ft_player_set 0
execute as @e[scores={ft_point_set=1..}] run scoreboard players set @s ft_point_set 0


# 据守模式 tp 检测
execute as @e[scores={ft_mob_point=1}] at @s run tp @e[tag=ft_mob_tag,distance=35..] @s

execute as @e[type=armor_stand,tag=ft_point_model,scores={ft_mob_point=1}] at @s run tp @s ~ ~ ~ facing ^0.001 ^ ^
execute as @e[type=armor_stand,tag=ft_point_model,scores={ft_mob_point=1}] at @s run particle minecraft:enchant ~ ~2 ~ 0 0 0 1 1