$function settings:__private__/generation/first with storage settings:data entries.namespaces.'$(value)'
$function settings:__private__/util/loop {\
    nbt:"storage settings:data entries.menus.'$(value)'",\
    function:"settings:__private__/generation/_menu with storage settings:data loop.value",\
}
data modify storage settings:data macro.last set value {}
data modify storage settings:data macro.last.keys set from storage settings:data menus.keys
function settings:__private__/generation/last with storage settings:data macro.last