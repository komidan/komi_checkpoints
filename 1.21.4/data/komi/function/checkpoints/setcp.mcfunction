# kill previously made armor stand "checkpoint"
kill @e[type=armor_stand,tag=checkpoint]

tellraw @a "ouch"
# add one to scoreboard
scoreboard players add @a total_setcp 1

# assign positional data to scoreboard
# scaled by 10000 since can only store int, downscale by .00001 when teleporting
execute store result score @s posX run data get entity @s Pos[0] 10000
execute store result score @s posY run data get entity @s Pos[1] 10000
execute store result score @s posZ run data get entity @s Pos[2] 10000
execute store result score @s yaw run data get entity @s Rotation[0] 100
execute store result score @s pitch run data get entity @s Rotation[1] 100

# create entity on player and assign posX, posY, posZ, yaw, pitch
summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Tags:["checkpoint"]}

execute store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=checkpoint] Pos[0] double .0001 run scoreboard players get @s posX
execute store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=checkpoint] Pos[1] double .0001 run scoreboard players get @s posY
execute store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=checkpoint] Pos[2] double .0001 run scoreboard players get @s posZ
execute store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=checkpoint] Rotation[0] float .01 run scoreboard players get @s yaw
execute store result entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=checkpoint] Rotation[1] float .01 run scoreboard players get @s pitch

# call actionbar update.mcfunction
function komi:actionbar/update