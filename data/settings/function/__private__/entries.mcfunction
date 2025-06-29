function settings:entry/advanced/add_setting_type {\
    key:"string",\
    function:"settings:__private__/accept/input/string"\
}

function settings:entry/advanced/add_setting_type {\
    key:"boolean",\
    function:"settings:__private__/accept/input/boolean"\
}

function settings:entry/advanced/add_setting_type {\
    key:"enum",\
    function:"settings:__private__/accept/input/enum"\
}

function settings:entry/advanced/add_setting_type {\
    key:"clamped_integer",\
    function:"settings:__private__/accept/input/clamped_integer"\
}

function settings:entry/advanced/add_setting_type {\
    key:"integer",\
    function:"settings:__private__/accept/input/integer"\
}

function settings:entry/advanced/add_display_type {\
    key:"label",\
    function:"settings:__private__/accept/display/label"\
}

function settings:entry/advanced/add_display_type {\
    key:"item",\
    function:"settings:__private__/accept/display/item"\
}

function settings:entry/advanced/add_display_type {\
    key:"button",\
    function:"settings:__private__/accept/display/button"\
}

function settings:entry/add_namespace {\
    key:"settings_example",\
    name:"Example Namespace",\
    description:"Just an example, nothing to see",\
}

function settings:entry/add_namespace {\
    key:"settings_example2",\
    name:"Example Namespace The Second",\
    description:"Just an example, nothing to see again",\
}

### TESTING SETTINGS ###

# function settings:entry/add_setting {\
#     namespace:"settings_example",\
#     type:"boolean",\
#     key:"example_boolean",\
#     data:{\
#         text:"A Boolean",\
#         description:"Woah",\
#         default:false\
#     }\
# }

# function settings:entry/add_setting {\
#     namespace:"settings_example",\
#     type:"boolean",\
#     key:"example_boolean2",\
#     data:{\
#         text:"Another Boolean",\
#         description:"Crazy",\
#         default:true\
#     }\
# }

# function settings:entry/add_setting {\
#     namespace:"settings_example2",\
#     type:"boolean",\
#     key:"example_boolean42",\
#     data:{\
#         text:"Invisible Joker",\
#         description:"Banana",\
#         default:true\
#     }\
# }

# function settings:entry/add_setting {\
#     namespace:"settings_example2",\
#     type:"clamped_integer",\
#     key:"what_a_key",\
#     data:{\
#         text:"Stupid",\
#         description:"Idiot",\
#         default:5,\
#         start:0,\
#         end:20,\
#         step:2,\
#     }\
# }


# function settings:entry/add_display {\
#     namespace:"settings_example",\
#     type:"label",\
#     data:{\
#         text:"What a label, yeah?",\
#     }\
# }

# function settings:entry/add_display {\
#     namespace:"settings_example2",\
#     type:"item",\
#     data:{\
#         id:"minecraft:stone",\
#         components:{},\
#         description:"Thingy",\
#         show_tooltip:false,\
#     }\
# }

# function settings:entry/add_setting {\
#     namespace:"settings_example2",\
#     type:"string",\
#     key:"example_str",\
#     data:{\
#         text:"WAAA",\
#         description:"Luigi",\
#         default:"Jeff",\
#         max_length:8,\
#     }\
# }

# function settings:entry/add_setting {\
#     namespace:"settings_example2",\
#     type:"enum",\
#     key:"example_enum",\
#     data:{\
#         text:"ABCDEF",\
#         description:"DESK",\
#         default:2,\
#         options:[\
#             {name:"Face",value:1},\
#             {name:"Edge",value:2},\
#             {name:"Corner",value:4},\
#         ]\
#     }\
# }