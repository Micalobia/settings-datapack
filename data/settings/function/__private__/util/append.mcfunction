$data modify storage settings:data macro.append set value {nbt:"$(nbt)",right:"$(value)"}
$data modify storage settings:data macro.append.left set from $(nbt)
function settings:__private__/util/_append with storage settings:data macro.append