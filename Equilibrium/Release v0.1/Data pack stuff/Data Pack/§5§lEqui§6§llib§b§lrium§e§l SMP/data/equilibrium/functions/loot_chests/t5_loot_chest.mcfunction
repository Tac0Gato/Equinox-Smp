#starts the cycle allowing for the animation to happen
tag @s remove new

#particles!!!!!
execute if score @s .loot_timer matches 140.. run tp @s ~ ~.06 ~ facing ^.95 ^.06 ^4.5

execute if score @s .loot_timer matches 140.. run particle dust{color:[0.05,0.0,0.05],scale:1} ^ ^1 ^2 0 0 0 1 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.05,0.0,0.05],scale:1} ^ ^1 ^-2 0 0 0 1 3

execute if score @s .loot_timer matches 140.. run particle dust{color:[0.05,0.0,0.05],scale:1} ^ ^2 ^1 0 0 0 1 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.05,0.0,0.05],scale:1} ^ ^2 ^-1 0 0 0 1 3

execute if score @s .loot_timer matches 140.. run particle dust{color:[0.05,0.0,0.05],scale:1} ^ ^ ^1 0 0 0 1 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.05,0.0,0.05],scale:1} ^ ^ ^-1 0 0 0 1 3

execute if score @s .loot_timer matches 140.. run particle minecraft:glow ^2 ^1 ^-2 0 0 0 .5 2
execute if score @s .loot_timer matches 140.. run particle minecraft:wax_on ^2 ^1 ^2 0 0 0 1 1
execute if score @s .loot_timer matches 140.. run particle minecraft:witch ^-2.4 ^1.2 ^ 0 0 0 .5 2

execute if score @s .loot_timer matches 140.. run particle dust{color:[0.05,0.0,0.05],scale:1.5} ^ ^1 ^ 0.125 0.125 0.125 .3 5


execute if score @s .loot_timer matches 140.. run particle minecraft:dripping_obsidian_tear ^ ^1 ^7.5 0 0 0 3 4
execute if score @s .loot_timer matches 140.. run particle minecraft:dripping_obsidian_tear ^ ^1 ^-7.5 0 0 0 3 4

execute if score @s .loot_timer matches 140.. run particle minecraft:dripping_obsidian_tear ^ ^1 ^15 0 0 0 3 2
execute if score @s .loot_timer matches 140.. run particle minecraft:dripping_obsidian_tear ^ ^1 ^-15 0 0 0 3 2

execute if score @s .loot_timer matches 140 run particle dust{color:[0.3,0.0,0.3],scale:2} ^ ^ ^ 0.6 1 0.6 0 100

execute if score @s .loot_timer matches 10..138 run particle minecraft:smoke ~ ~.5 ~ 0.2 0.2 0.2 0 24
execute if score @s .loot_timer matches 38..120 run particle minecraft:portal ~ ~.5 ~ 0 0 0 12 16
execute if score @s .loot_timer matches 0..3 run particle minecraft:gust ~ ~0.75 ~ 0.2 0.2 0.2 0.3 4

#gives players effects
execute if score @s .loot_timer matches 160.. run effect give @e[distance=..25,type=!armor_stand] minecraft:levitation 1 0 true
execute if score @s .loot_timer matches 20..140 run effect give @e[distance=..25,type=!armor_stand] minecraft:slow_falling 1 0 true

#sounds!!!!!!
execute if score @s .loot_timer matches 340 run playsound minecraft:block.amethyst_block.chime master @a[distance=..30] ~ ~ ~ 15 1
execute if score @s .loot_timer matches 320 run playsound minecraft:block.amethyst_block.chime master @a[distance=..30] ~ ~ ~ 15 .9
execute if score @s .loot_timer matches 300 run playsound minecraft:block.amethyst_block.chime master @a[distance=..30] ~ ~ ~ 15 .8
execute if score @s .loot_timer matches 280 run playsound minecraft:block.amethyst_block.chime master @a[distance=..30] ~ ~ ~ 15 .7
execute if score @s .loot_timer matches 260 run playsound minecraft:block.amethyst_block.chime master @a[distance=..30] ~ ~ ~ 15 .6
execute if score @s .loot_timer matches 240 run playsound minecraft:block.amethyst_block.chime master @a[distance=..30] ~ ~ ~ 15 .5
execute if score @s .loot_timer matches 220 run playsound minecraft:block.amethyst_block.chime master @a[distance=..30] ~ ~ ~ 15 .4
execute if score @s .loot_timer matches 200 run playsound minecraft:block.amethyst_block.chime master @a[distance=..30] ~ ~ ~ 15 .3
execute if score @s .loot_timer matches 180 run playsound minecraft:block.amethyst_block.chime master @a[distance=..30] ~ ~ ~ 15 .2
execute if score @s .loot_timer matches 140 run playsound minecraft:block.amethyst_block.chime master @a[distance=..30] ~ ~ ~ 15 .1
execute if score @s .loot_timer matches 140 run playsound minecraft:entity.firework_rocket.blast_far master @a[distance=..30] ~ ~ ~ 10 0
execute if score @s .loot_timer matches 0..4 run playsound minecraft:block.amethyst_block.hit master @a[distance=..30] ~ ~ ~ 10 0

#teleports the fucker up in the air
execute if score @s .loot_timer matches 139 run tp @s ~ ~16 ~

#places and destroys barrel all on the same tick ALSO LOOT TABLE THING HERE!!!!!!!!!!
execute if score @s .loot_timer matches 5 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"minecraft:chests/simple_dungeon"}
execute if score @s .loot_timer matches 5 run setblock ~ ~ ~ air destroy
execute if score @s .loot_timer matches 5 run kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2]

#removes 1 score after each turn
scoreboard players remove @s .loot_timer 1