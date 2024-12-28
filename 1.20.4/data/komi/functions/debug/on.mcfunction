# create debug scoreboard and display
scoreboard objectives add debug dummy
scoreboard objectives setdisplay sidebar debug

# assign fakeplayer data's equal to other scoreboard objectives
scoreboard players operation go_checks debug = @a total_gocheck
scoreboard players operation checkpoints debug = @a total_setcp

# positional data
scoreboard players operation posX debug = @a posX
scoreboard players operation posY debug = @a posY
scoreboard players operation posZ debug = @a posZ
scoreboard players operation yaw debug = @a yaw
scoreboard players operation pitch debug = @a pitch