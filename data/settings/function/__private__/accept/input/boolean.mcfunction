# menus.root.dialogs[#].inputs[#].initial
data modify storage settings:data macro.boolean set value {result:"menus.root.dialogs[",nbt:"storage settings:data macro.boolean.result"}
execute store result storage settings:data macro.boolean.value int 1 run data get storage settings:data menus.root.dialogs
function settings:__private__/util/append with storage settings:data macro.boolean
function settings:__private__/util/append {nbt:"storage settings:data macro.boolean.result",value:"].inputs["}
execute store result storage settings:data macro.boolean.value int 1 run data get storage settings:data menus.builder.inputs
function settings:__private__/util/append with storage settings:data macro.boolean
function settings:__private__/util/append {nbt:"storage settings:data macro.boolean.result",value:"].initial"}
$data modify storage settings:data menus.paths."$(_key)" set value {function:"settings:__private__/patch/mode/simple"}
$data modify storage settings:data menus.paths."$(_key)".path set from storage settings:data macro.boolean.result
$data modify storage settings:data menus.builder.inputs append value \
{\
    type:"boolean",\
    key:"$(_key)",\
    label:$(display),\
    initial:$(default),\
    on_true:"1",\
    on_false:"0"\
}
$function settings:__private__/util/append {nbt:"storage settings:data menus.command",value:",$(_key):$"}
$function settings:__private__/util/append {nbt:"storage settings:data menus.command",value:"($(_key))"}
