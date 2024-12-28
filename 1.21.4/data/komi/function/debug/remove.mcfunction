scoreboard objectives remove click_detection
scoreboard objectives remove debug
scoreboard objectives remove debug_enabled
scoreboard objectives remove pitch
scoreboard objectives remove posX
scoreboard objectives remove posY
scoreboard objectives remove posZ
scoreboard objectives remove total_gocheck
scoreboard objectives remove total_setcp
scoreboard objectives remove yaw

clear @a carrot_on_a_stick[custom_data={komitool:1}]
clear @a carrot_on_a_stick[custom_data={komitool:2}]
clear @a carrot_on_a_stick[custom_data={komitool:3}]

kill @e[type=armor_stand,tag=checkpoint]