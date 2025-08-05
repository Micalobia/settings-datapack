$data modify storage settings:data menus.builder set value \
{\
    type:"confirmation",\
    title:$(display),\
    inputs:[],\
    body:[],\
    yes:{\
        label:"Save and Exit",\
        action:{\
            type:"dynamic/run_command"\
        }\
    },\
    no:{\
        label:"Exit without Saving",\
        action:{\
            type:"run_command",\
            command:"trigger Settings"\
        }\
    }\
}
data modify storage settings:data menus.command set value "function settings:__private__/patch/save {nbt:{_:0"