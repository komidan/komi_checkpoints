# on click, reset scoreboard
scoreboard players set @a click_detection 0

# add one to scoreboard
scoreboard players add @a total_gocheck 1

# teleport player to entity
teleport @a @e[type=minecraft:armor_stand,limit=1,tag=checkpoint]

# call actionbar update.mcfunction
function komi:actionbar/update