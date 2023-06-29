# 清理过期防御塔
execute as @e[tag=ft_quake_type,nbt={PortalCooldown:0}] at @s run particle minecraft:lava ~ ~ ~ 0.6 1.0 0.6 1 100
execute as @e[tag=ft_quake_type,nbt={PortalCooldown:0}] at @s run playsound minecraft:block.anvil.destroy player @a
execute as @e[tag=ft_quake_type,nbt={PortalCooldown:0}] at @s run kill @s