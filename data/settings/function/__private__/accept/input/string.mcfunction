# data
# - max_length
# menus.root.dialogs[#].inputs[#].initial
data modify storage settings:data macro.string set value {result:"menus.root.dialogs[",nbt:"storage settings:data macro.string.result"}
execute store result storage settings:data macro.string.value int 1 run data get storage settings:data menus.root.dialogs
function settings:__private__/util/append with storage settings:data macro.string
function settings:__private__/util/append {nbt:"storage settings:data macro.string.result",value:"].inputs["}
execute store result storage settings:data macro.string.value int 1 run data get storage settings:data menus.builder.inputs
function settings:__private__/util/append with storage settings:data macro.string
function settings:__private__/util/append {nbt:"storage settings:data macro.string.result",value:"].initial"}
$data modify storage settings:data menus.paths."$(_key)" set value {function:"settings:__private__/patch/mode/simple"}
$data modify storage settings:data menus.paths."$(_key)".path set from storage settings:data macro.string.result
$data modify storage settings:data menus.builder.inputs append value \
{\
    type:"text",\
    key:"$(_key)",\
    label:"$(text)",\
    initial:"$(default)",\
    max_length:$(max_length),\
}
$function settings:__private__/util/append {nbt:"storage settings:data menus.command",value:",$(_key):'$"}
$function settings:__private__/util/append {nbt:"storage settings:data menus.command",value:"($(_key))'"}
