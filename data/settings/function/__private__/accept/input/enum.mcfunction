# data
# # options [list]
# # # name  [str]
# # # value [int]
# menus.root.dialogs[#].inputs[#].options
data modify storage settings:data macro.enum set value {result:"menus.root.dialogs[",nbt:"storage settings:data macro.enum.result"}
execute store result storage settings:data macro.enum.value int 1 run data get storage settings:data menus.root.dialogs
function settings:__private__/util/append with storage settings:data macro.enum
function settings:__private__/util/append {nbt:"storage settings:data macro.enum.result",value:"].inputs["}
execute store result storage settings:data macro.enum.value int 1 run data get storage settings:data menus.builder.inputs
function settings:__private__/util/append with storage settings:data macro.enum
function settings:__private__/util/append {nbt:"storage settings:data macro.enum.result",value:"].options"}
$data modify storage settings:data menus.paths."$(_key)" set value {function:"settings:__private__/patch/mode/enum"}
$data modify storage settings:data menus.paths."$(_key)".path set from storage settings:data macro.enum.result
$data modify storage settings:data cur_enum set value $(options)
$data modify storage settings:data menus.builder.inputs append value \
{\
    type:"single_option",\
    key:"$(_key)",\
    label:$(display),\
    options:[]\
}
$scoreboard players set #enum_index settings.data $(default)
function settings:__private__/util/loop {\
    nbt:"storage settings:data cur_enum",\
    function:"settings:__private__/accept/input/_enum with storage settings:data loop.value",\
}
$function settings:__private__/util/append {nbt:"storage settings:data menus.command",value:",$(_key):$"}
$function settings:__private__/util/append {nbt:"storage settings:data menus.command",value:"($(_key))"}
