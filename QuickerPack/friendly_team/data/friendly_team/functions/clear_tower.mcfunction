# 清除所有防御塔
execute as @e[scores={ft_tower_clear=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[ft_clear_t]}}}] run execute as @e[tag=ft_ender_type] run data modify entity @s PortalCooldown set value 0
execute as @e[scores={ft_tower_clear=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[ft_clear_t]}}}] run execute as @e[tag=ft_quake_type] run data modify entity @s PortalCooldown set value 0
execute as @e[scores={ft_tower_clear=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:[ft_clear_t]}}}] run tellraw @a {"text":"【友好团队】<已清除所有防守塔>","hoverEvent":{"action":"show_text","value":{"selector":"@s"}}}
execute as @e[scores={ft_tower_clear=1..}] run scoreboard players set @s ft_tower_clear 0