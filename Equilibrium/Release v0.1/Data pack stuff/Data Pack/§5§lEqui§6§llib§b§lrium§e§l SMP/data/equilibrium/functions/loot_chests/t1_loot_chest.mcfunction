#starts the cycle allowing for the animation to happen
tag @s remove new

#particles!!!!!
execute if score @s .loot_timer matches 140.. run tp @s ~ ~.035 ~ facing ^.95 ^.035 ^4.5
execute if score @s .loot_timer matches 140.. run particle dust{color:[1.0,0.7,0.39],scale:0.75} ^ ^ ^.75 0 0 0 0 3
execute if score @s .loot_timer matches 140 run particle dust{color:[1.0,0.7,0.39],scale:1} ^ ^ ^ 0.3 0.3 0.3 0 75
execute if score @s .loot_timer matches 30..138 run particle minecraft:wax_on ~ ~.5 ~ 0.125 0.125 0.125 .5 32
execute if score @s .loot_timer matches 28..110 run particle minecraft:enchant ~ ~1.25 ~ 0 0 0 4 2
execute if score @s .loot_timer matches 0..3 run particle minecraft:explosion ~ ~0.75 ~ 0.05 0.05 0.05 0 3

#sounds!!!!!!
execute if score @s .loot_timer matches 230 run playsound minecraft:block.amethyst_block.chime master @a[distance=..10] ~ ~ ~ 10 .4
execute if score @s .loot_timer matches 210 run playsound minecraft:block.amethyst_block.chime master @a[distance=..10] ~ ~ ~ 10 .3
execute if score @s .loot_timer matches 190 run playsound minecraft:block.amethyst_block.chime master @a[distance=..10] ~ ~ ~ 10 .2
execute if score @s .loot_timer matches 170 run playsound minecraft:block.amethyst_block.chime master @a[distance=..10] ~ ~ ~ 10 .1
execute if score @s .loot_timer matches 140 run playsound minecraft:entity.firework_rocket.blast_far master @a[distance=..10] ~ ~ ~ 10 1
execute if score @s .loot_timer matches 4 run playsound minecraft:block.amethyst_block.hit master @a[distance=..10] ~ ~ ~ 10 0.6

#teleports the fucker up in the air
execute if score @s .loot_timer matches 139 run tp @s ~ ~8 ~

#places and destroys barrel all on the same tick ALSO LOOT TABLE THING HERE!!!!!!!!!!
execute if score @s .loot_timer matches 5 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"equilibrium:t1_loot"}
execute if score @s .loot_timer matches 5 run setblock ~ ~ ~ air destroy
execute if score @s .loot_timer matches 5 run kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2]

#removes 1 score after each turn
scoreboard players remove @s .loot_timer 1






