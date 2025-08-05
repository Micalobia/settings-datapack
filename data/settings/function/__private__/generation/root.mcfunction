data modify storage settings:data menus.paths set value {}
data modify storage settings:data menus.root set value {\
    type:"dialog_list",\
    title:"Datapack Settings",\
    dialogs:[],\
    columns:1,\
    button_width:300,\
    exit_action: {\
        label:"Exit",action:{\
            type:"run_command",\
            command:"trigger Settings add 0"\
        }\
    }\
}
function settings:__private__/generation/menus