scoreboard players set @a click_detection 0

# reset all scoreboards to 0 for new run
scoreboard players set @a total_gocheck 0
scoreboard players set @a total_setcp 0
scoreboard players set @a posX 0
scoreboard players set @a posY 0
scoreboard players set @a posZ 0
scoreboard players set @a yaw 0
scoreboard players set @a pitch 0

kill @e[type=armor_stand,tag=checkpoint]

# update actionbar to show 0 gocheck and 0 setcp
function komi:actionbar/update
