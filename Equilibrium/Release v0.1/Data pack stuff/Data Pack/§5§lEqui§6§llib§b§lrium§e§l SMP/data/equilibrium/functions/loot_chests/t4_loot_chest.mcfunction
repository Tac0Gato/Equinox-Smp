#starts the cycle allowing for the animation to happen
tag @s remove new

#particles!!!!!
execute if score @s .loot_timer matches 140.. run tp @s ~ ~.025 ~ facing ^.95 ^.025 ^4.5
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.8,0.8,0.4],scale:1.1} ^ ^ ^1.55 0 0 0 0 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.8,0.8,0.4],scale:1.1} ^ ^ ^-1.55 0 0 0 0 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.8,0.8,0.4],scale:1.1} ^1 ^-.75 ^ 0 0 0 0 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.8,0.8,0.4],scale:1.1} ^-1 ^-.75 ^ 0 0 0 0 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.8,0.8,0.4],scale:1.1} ^1 ^.75 ^ 0 0 0 0 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.8,0.8,0.4],scale:1.1} ^-1 ^.75 ^ 0 0 0 0 3
execute if score @s .loot_timer matches 140 run particle dust{color:[0.8,0.8,0.4],scale:1.45} ^ ^ ^ 0.6 0.6 0.6 0 150
execute if score @s .loot_timer matches 5..138 run particle minecraft:crit ~ ~.5 ~ 0.175 0.175 0.175 .1 48
execute if score @s .loot_timer matches 28..100 run particle minecraft:enchant ~ ~1.25 ~ 0 0 0 6 8
execute if score @s .loot_timer matches 0..3 run particle minecraft:gust ~ ~0.75 ~ 0.175 0.175 0.175 0 12

#sounds!!!!!!
execute if score @s .loot_timer matches 320 run playsound minecraft:block.amethyst_block.chime master @a[distance=..25] ~ ~ ~ 15 .9
execute if score @s .loot_timer matches 300 run playsound minecraft:block.amethyst_block.chime master @a[distance=..25] ~ ~ ~ 15 .8
execute if score @s .loot_timer matches 280 run playsound minecraft:block.amethyst_block.chime master @a[distance=..25] ~ ~ ~ 15 .7
execute if score @s .loot_timer matches 260 run playsound minecraft:block.amethyst_block.chime master @a[distance=..25] ~ ~ ~ 15 .6
execute if score @s .loot_timer matches 240 run playsound minecraft:block.amethyst_block.chime master @a[distance=..25] ~ ~ ~ 15 .5
execute if score @s .loot_timer matches 220 run playsound minecraft:block.amethyst_block.chime master @a[distance=..25] ~ ~ ~ 15 .4
execute if score @s .loot_timer matches 200 run playsound minecraft:block.amethyst_block.chime master @a[distance=..25] ~ ~ ~ 15 .3
execute if score @s .loot_timer matches 180 run playsound minecraft:block.amethyst_block.chime master @a[distance=..25] ~ ~ ~ 15 .2
execute if score @s .loot_timer matches 140 run playsound minecraft:block.amethyst_block.chime master @a[distance=..25] ~ ~ ~ 15 .1
execute if score @s .loot_timer matches 140 run playsound minecraft:entity.firework_rocket.blast_far master @a[distance=..25] ~ ~ ~ 10 0.25
execute if score @s .loot_timer matches 1..4 run playsound minecraft:block.amethyst_block.hit master @a[distance=..25] ~ ~ ~ 10 0.2

#teleports the fucker up in the air
execute if score @s .loot_timer matches 139 run tp @s ~ ~16 ~

#places and destroys barrel all on the same tick ALSO LOOT TABLE THING HERE!!!!!!!!!!
execute if score @s .loot_timer matches 5 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"minecraft:chests/simple_dungeon"}
execute if score @s .loot_timer matches 5 run setblock ~ ~ ~ air destroy
execute if score @s .loot_timer matches 5 run kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2]

#removes 1 score after each turn
scoreboard players remove @s .loot_timer 1