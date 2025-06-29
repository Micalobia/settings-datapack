execute unless score @s settings.id matches 1.. run return fail
$execute unless data storage settings:data users.default."$(key)"" run return fail
execute store result storage settings:data macro.set.id int 1 run scoreboard players get @s settings.id
$data modify storage settings:data macro.set.key set value "$(key)"
$data modify storage settings:data macro.set.value set value $(value)
function settings:__private__/data/set_value with storage settings:data macro
return 1