#starts the cycle allowing for the animation to happen
tag @s remove new

#particles!!!!!
execute if score @s .loot_timer matches 140.. run tp @s ~ ~.025 ~ facing ^.95 ^.025 ^4.5
execute if score @s .loot_timer matches 140.. run particle minecraft:raid_omen ^ ^ ^ 0 0 0 0 1
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.5,0.0,0.0],scale:1.1} ^ ^ ^1.55 0 0 0 0 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.5,0.0,0.0],scale:1.1} ^ ^ ^-1.55 0 0 0 0 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.5,0.0,0.0],scale:1.1} ^1 ^-.75 ^ 0 0 0 0 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.5,0.0,0.0],scale:1.1} ^-1 ^-.75 ^ 0 0 0 0 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.5,0.0,0.0],scale:1.1} ^1 ^.75 ^ 0 0 0 0 3
execute if score @s .loot_timer matches 140.. run particle dust{color:[0.5,0.0,0.0],scale:1.1} ^-1 ^.75 ^ 0 0 0 0 3
execute if score @s .loot_timer matches 140 run particle dust{color:[0.5,0.0,0.0],scale:1.45} ^ ^ ^ 0.6 0.6 0.6 0 150
execute if score @s .loot_timer matches 5..138 run particle dust{color:[0.5,0.0,0.0],scale:1.1} ~ ~.5 ~ 0.175 0.175 0.175 .1 48
execute if score @s .loot_timer matches 20..110 run particle minecraft:raid_omen ~ ~.5 ~ 0 0 0 .9 8
execute if score @s .loot_timer matches 0..3 run particle minecraft:gust ~ ~0.75 ~ 0.175 0.175 0.175 0 12

#sounds!!!!!!
execute if score @s .loot_timer matches 320 run playsound minecraft:block.ender_chest.open master @a[distance=..250] ~ ~ ~ 15 .9
execute if score @s .loot_timer matches 300 run playsound minecraft:block.ender_chest.open master @a[distance=..250] ~ ~ ~ 15 .8
execute if score @s .loot_timer matches 280 run playsound minecraft:block.ender_chest.open master @a[distance=..250] ~ ~ ~ 15 .7
execute if score @s .loot_timer matches 260 run playsound minecraft:block.ender_chest.open master @a[distance=..250] ~ ~ ~ 15 .6
execute if score @s .loot_timer matches 240 run playsound minecraft:block.ender_chest.open master @a[distance=..250] ~ ~ ~ 15 .5
execute if score @s .loot_timer matches 220 run playsound minecraft:block.ender_chest.open master @a[distance=..250] ~ ~ ~ 15 .4
execute if score @s .loot_timer matches 200 run playsound minecraft:block.ender_chest.open master @a[distance=..250] ~ ~ ~ 15 .3
execute if score @s .loot_timer matches 180 run playsound minecraft:block.ender_chest.open master @a[distance=..250] ~ ~ ~ 15 .2
execute if score @s .loot_timer matches 140 run playsound minecraft:block.ender_chest.open master @a[distance=..250] ~ ~ ~ 15 .1
execute if score @s .loot_timer matches 140 run playsound minecraft:entity.vindicator.death master @a[distance=..250] ~ ~ ~ 10 0
execute if score @s .loot_timer matches 4..4 run playsound minecraft:entity.wither.death master @a[distance=..500] ~ ~ ~ 10 0.5

#gives players effects
execute if score @s .loot_timer matches 100.. run effect give @e[distance=..250,type=!armor_stand] minecraft:darkness 5 0 true

#teleports the fucker up in the air
execute if score @s .loot_timer matches 139 run tp @s ~ ~16 ~

#places and destroys barrel all on the same tick ALSO LOOT TABLE THING HERE!!!!!!!!!!
execute if score @s .loot_timer matches 5 run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"minecraft:chests/simple_dungeon"}
execute if score @s .loot_timer matches 5 run setblock ~ ~ ~ air destroy
execute if score @s .loot_timer matches 5 run kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2]

#removes 1 score after each turn
scoreboard players remove @s .loot_timer 1