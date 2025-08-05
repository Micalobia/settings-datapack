$data modify storage settings:data menus.builder.inputs[-1].options append value {\
    id:"$(value)",\
}
data modify storage settings:data menus.builder.inputs[-1].options[-1].display set from storage settings:data loop.value.name
$execute store result storage settings:data menus.builder.inputs[-1].options[-1].initial byte 1 if score #enum_index settings.data matches $(value)