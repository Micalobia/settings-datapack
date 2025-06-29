$data modify storage settings:data changes set value $(nbt)
data modify storage settings:data macro.save set value {}
execute store result storage settings:data macro.save.id int 1 run scoreboard players get @s settings.id
function settings:__private__/util/loop {\
    nbt:"storage settings:data entries.settings",\
    function:"settings:__private__/patch/_save with storage settings:data loop",\
}