$data modify storage settings:data menus.builder.inputs[-1].options append value {\
    id:"$(value)",\
    display:"$(name)",\
}
$execute store result storage settings:data menus.builder.inputs[-1].options[-1].initial byte 1 if score #enum_index settings.data matches $(value)