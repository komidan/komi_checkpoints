# detect when holding tool, and on use run the tool's function
execute as @a[scores={click_detection=1..},nbt={SelectedItem:{tag:{komitool:1}},OnGround:1b,FallDistance:0.0f}] run function komi:checkpoints/setcp
execute as @a[scores={click_detection=1..},nbt={SelectedItem:{tag:{komitool:2}}}] run function komi:checkpoints/gocheck
execute as @a[scores={click_detection=1..},nbt={SelectedItem:{tag:{komitool:3}}}] run function komi:checkpoints/reset

# if debug is on (1)
execute if score @s debug_enabled matches 1 run function komi:debug/on