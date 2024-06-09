#starts the cycle allowing for the animation to happen
tag @s remove new

#particles!!!!!
execute if score @s .loot_timer matches 140.. run tp @s ~ ~.03 ~ facing ^.95 ^.03 ^4.5
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.63,0.59,0.58],scale:0.9} ^ ^ ^.75 0 0 0 0 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.63,0.59,0.58],scale:0.9} ^ ^ ^-.75 0 0 0 0 3
execute if score @s .loot_timer matches 140 run particle dust{color:[0.63,0.59,0.58],scale:1.25} ^ ^ ^ 0.4 0.4 0.4 0 100
execute if score @s .loot_timer matches 5..138 run particle minecraft:smoke ~ ~.5 ~ 0.15 0.15 0.15 0 32
execute if score @s .loot_timer matches 28..110 run particle minecraft:enchant ~ ~1.25 ~ 0 0 0 5 5
execute if score @s .loot_timer matches 0..3 run particle minecraft:explosion ~ ~0.75 ~ 0.1 0.1 0.1 0 6

#sounds!!!!!!
execute if score @s .loot_timer matches 260 run playsound minecraft:block.amethyst_block.chime master @a[distance=..15] ~ ~ ~ 10 .6
execute if score @s .loot_timer matches 240 run playsound minecraft:block.amethyst_block.chime master @a[distance=..15] ~ ~ ~ 10 .5
execute if score @s .loot_timer matches 220 run playsound minecraft:block.amethyst_block.chime master @a[distance=..15] ~ ~ ~ 10 .4
execute if score @s .loot_timer matches 200 run playsound minecraft:block.amethyst_block.chime master @a[distance=..15] ~ ~ ~ 10 .3
execute if score @s .loot_timer matches 180 run playsound minecraft:block.amethyst_block.chime master @a[distance=..15] ~ ~ ~ 10 .2
execute if score @s .loot_timer matches 160 run playsound minecraft:block.amethyst_block.chime master @a[distance=..15] ~ ~ ~ 10 .1
execute if score @s .loot_timer matches 140 run playsound minecraft:entity.firework_rocket.blast_far master @a[distance=..15] ~ ~ ~ 10 0.75
execute if score @s .loot_timer matches 3..4 run playsound minecraft:block.amethyst_block.hit master @a[distance=..15] ~ ~ ~ 10 0.4

#teleports the fucker up in the air
execute if score @s .loot_timer matches 139 run tp @s ~ ~12 ~

#places and destroys barrel all on the same tick ALSO LOOT TABLE THING HERE!!!!!!!!!!
execute if score @s .loot_timer matches 5 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"minecraft:chests/simple_dungeon"}
execute if score @s .loot_timer matches 5 run setblock ~ ~ ~ air destroy
execute if score @s .loot_timer matches 5 run kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2]

#removes 1 score after each turn
scoreboard players remove @s .loot_timer 1