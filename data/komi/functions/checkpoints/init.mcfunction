# create positional data scoreboard objectives
scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy
scoreboard objectives add yaw dummy
scoreboard objectives add pitch dummy

# track how many checkpoints / teleports
scoreboard objectives add total_gocheck dummy "total gocheck count"
scoreboard objectives add total_setcp dummy "total setcp amount"

# click detection
scoreboard objectives add click_detection minecraft.used:minecraft.carrot_on_a_stick