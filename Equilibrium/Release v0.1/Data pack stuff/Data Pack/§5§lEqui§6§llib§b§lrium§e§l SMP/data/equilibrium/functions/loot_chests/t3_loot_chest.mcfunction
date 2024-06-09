#starts the cycle allowing for the animation to happen
tag @s remove new

#particles!!!!!
execute if score @s .loot_timer matches 140.. run tp @s ~ ~.027 ~ facing ^.95 ^.027 ^4.5
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.8,0.8,0.8],scale:0.9} ^ ^ ^1.2 0 0 0 0 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.8,0.8,0.8],scale:0.9} ^ ^ ^-1.2 0 0 0 0 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.8,0.8,0.8],scale:0.9} ^ ^-.5 ^.75 0 0 0 0 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.8,0.8,0.8],scale:0.9} ^ ^-.5 ^-.75 0 0 0 0 3
execute if score @s .loot_timer matches 140 run particle dust{color:[0.8,0.8,0.8],scale:1.4} ^ ^ ^ 0.5 0.5 0.5 0 125
execute if score @s .loot_timer matches 30..138 run particle minecraft:white_smoke ~ ~.5 ~ 0.175 0.175 0.175 0 32
execute if score @s .loot_timer matches 28..110 run particle minecraft:enchant ~ ~1.25 ~ 0 0 0 6 8
execute if score @s .loot_timer matches 0..3 run particle minecraft:explosion ~ ~0.75 ~ 0.15 0.15 0.15 0 9

#sounds!!!!!!
execute if score @s .loot_timer matches 290 run playsound minecraft:block.amethyst_block.chime master @a[distance=..20] ~ ~ ~ 15 .7
execute if score @s .loot_timer matches 270 run playsound minecraft:block.amethyst_block.chime master @a[distance=..20] ~ ~ ~ 15 .6
execute if score @s .loot_timer matches 250 run playsound minecraft:block.amethyst_block.chime master @a[distance=..20] ~ ~ ~ 15 .5
execute if score @s .loot_timer matches 230 run playsound minecraft:block.amethyst_block.chime master @a[distance=..20] ~ ~ ~ 15 .4
execute if score @s .loot_timer matches 210 run playsound minecraft:block.amethyst_block.chime master @a[distance=..20] ~ ~ ~ 15 .3
execute if score @s .loot_timer matches 160 run playsound minecraft:block.amethyst_block.chime master @a[distance=..20] ~ ~ ~ 15 .2
execute if score @s .loot_timer matches 140 run playsound minecraft:block.amethyst_block.chime master @a[distance=..20] ~ ~ ~ 15 .1
execute if score @s .loot_timer matches 140 run playsound minecraft:entity.firework_rocket.blast_far master @a[distance=..20] ~ ~ ~ 10 0.5
execute if score @s .loot_timer matches 2..4 run playsound minecraft:block.amethyst_block.hit master @a[distance=..20] ~ ~ ~ 10 0.3

#teleports the fucker up in the air
execute if score @s .loot_timer matches 139 run tp @s ~ ~16 ~

#places and destroys barrel all on the same tick ALSO LOOT TABLE THING HERE!!!!!!!!!!
execute if score @s .loot_timer matches 5 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"minecraft:chests/simple_dungeon"}
execute if score @s .loot_timer matches 5 run setblock ~ ~ ~ air destroy
execute if score @s .loot_timer matches 5 run kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2]

#removes 1 score after each turn
scoreboard players remove @s .loot_timer 1