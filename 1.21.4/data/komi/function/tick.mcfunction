# detect when holding tool, and on use run the tool's function
function komi:debug/update

execute as @a[scores={click_detection=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{"komitool":1}}},OnGround:1b,FallDistance:0.0f}] run function komi:checkpoints/setcp
execute as @a[scores={click_detection=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{"komitool":2}}}}] run function komi:checkpoints/gocheck
execute as @a[scores={click_detection=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{"komitool":3}}}}] run function komi:checkpoints/reset