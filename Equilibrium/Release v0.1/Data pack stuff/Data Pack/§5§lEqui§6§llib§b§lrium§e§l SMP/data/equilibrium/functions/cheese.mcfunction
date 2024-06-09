execute as @e[type=armor_stand,tag=protector] at @s run kill @e[type=minecraft:tnt,distance=..30]
execute as @e[type=armor_stand,tag=protector] at @s run kill @e[type=minecraft:end_crystal,distance=..30]
execute as @e[type=armor_stand,tag=protector] at @s run kill @e[type=minecraft:creeper,distance=..30]
execute as @e[type=armor_stand,tag=protector] at @s run kill @e[type=minecraft:arrow,distance=..30]
execute as @e[type=armor_stand,tag=protector] at @s run kill @e[type=minecraft:tnt_minecart,distance=..30]
execute as @e[type=armor_stand,tag=protector] at @s run kill @e[type=minecraft:wither,distance=..20]
execute as @e[type=armor_stand,tag=protector] at @s run kill @e[type=minecraft:wither_skull,distance=..20]
execute as @e[type=armor_stand,tag=protector] at @s run execute at @e[type=minecraft:zombie,distance=..25] run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[type=armor_stand,tag=protector] at @s run execute at @e[type=minecraft:spider,distance=..25] run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[type=armor_stand,tag=protector] at @s run execute at @e[type=minecraft:enderman,distance=..25] run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[type=armor_stand,tag=protector] at @s run execute at @e[type=minecraft:spider,distance=..25] run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[type=armor_stand,tag=protector] at @s run execute at @e[type=minecraft:phantom,distance=..25] run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[type=armor_stand,tag=protector] at @s run tp @s ~ ~ ~ facing ^.2 ^ ^10
execute as @e[type=armor_stand,tag=luna.p] at @s run title @a[distance=..20] actionbar {"text":"☽ This area is protected by Luna ☽","bold":true,"color":"light_purple"}
execute as @e[type=armor_stand,tag=skye.p] at @s run title @a[distance=..20] actionbar {"text":"★ This area is protected by Skye ★","bold":true,"color":"aqua"}
execute as @e[type=armor_stand,tag=eclipse.p] at @s run title @a[distance=..20] actionbar {"text":"☀ This area is protected by Eclipse ☀","bold":true,"color":"gold"}
execute as @e[type=armor_stand,tag=protector] at @s run gamemode adventure @a[distance=..20,tag=!debug]
execute as @e[type=armor_stand,tag=protector] at @s run gamemode survival @a[distance=20..30,tag=!debug]