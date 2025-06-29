$data modify storage settings:data macro.patch set from storage settings:data menus.paths."$(value)"
$function settings:data/get {key:"$(value)"}
function settings:__private__/patch/edit with storage settings:data macro.patch