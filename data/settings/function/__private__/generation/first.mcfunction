$data modify storage settings:data menus.builder set value \
{\
    type:"confirmation",\
    title:"$(name)",\
    inputs:[],\
    body:[],\
    yes:{\
        label:"Save and Exit",\
        action:{\
            type:"dynamic/run_command"\
        }\
    },\
    no:{\
        label:"Exit without Saving"\
    }\
}
data modify storage settings:data menus.command set value "function settings:__private__/patch/save {nbt:{_:0"