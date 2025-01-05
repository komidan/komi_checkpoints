function komi:kill

# chat msg
tellraw @a {"text":" "}
tellraw @a {"text":"> komi's checkpoints 1.21.4", "color": "#aa6ed8"}
tellraw @a {"text":" "}

# get checkpoint tool item
give @s warped_fungus_on_a_stick[custom_data={"komitool":1},custom_name='["",{"text":"setcp","italic":false, "color": "#e272e8"}]'] 1
give @s warped_fungus_on_a_stick[custom_data={"komitool":2},custom_name='["",{"text":"gocheck","italic":false, "color": "#b5e995"}]'] 1
give @s warped_fungus_on_a_stick[custom_data={"komitool":3},custom_name='["",{"text":"reset","italic":false, "color": "#ed3b38"}]'] 1

# init rest of datapack
function komi:actionbar/init
function komi:checkpoints/init