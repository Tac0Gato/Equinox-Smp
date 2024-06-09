execute as @e[tag=t1_loot_chest,tag=new] run scoreboard players set @s .loot_timer 230
execute as @e[tag=t2_loot_chest,tag=new] run scoreboard players set @s .loot_timer 260
execute as @e[tag=t3_loot_chest,tag=new] run scoreboard players set @s .loot_timer 290
execute as @e[tag=t4_loot_chest,tag=new] run scoreboard players set @s .loot_timer 320
execute as @e[tag=t5_loot_chest,tag=new] run scoreboard players set @s .loot_timer 350
execute as @e[tag=tc_loot_chest,tag=new] run scoreboard players set @s .loot_timer 320
execute as @e[tag=t1_loot_chest] at @s run function equilibrium:loot_chests/t1_loot_chest
execute as @e[tag=t2_loot_chest] at @s run function equilibrium:loot_chests/t2_loot_chest
execute as @e[tag=t3_loot_chest] at @s run function equilibrium:loot_chests/t3_loot_chest
execute as @e[tag=t4_loot_chest] at @s run function equilibrium:loot_chests/t4_loot_chest
execute as @e[tag=t5_loot_chest] at @s run function equilibrium:loot_chests/t5_loot_chest
execute as @e[tag=tc_loot_chest] at @s run function equilibrium:loot_chests/c_loot_chest