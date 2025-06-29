$execute unless data storage settings:data changes."$(value)" run return fail
data modify storage settings:data macro.save.key set from storage settings:data loop.value
function settings:__private__/patch/_player with storage settings:data macro.save