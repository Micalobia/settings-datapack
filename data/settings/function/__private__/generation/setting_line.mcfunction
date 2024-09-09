execute store result score #compare.success settings.data run function settings:__private__/util/compare {\
    left:"storage settings:data loop.values.0.key",\
    right:"storage settings:data loop.values.1.page",\
}
execute if score #compare.success settings.data matches 0 run return fail
$data modify storage settings:data page append value {\
    "translate":"settings.gui.setting_line",\
    "fallback":"%s [%s]",\
    "with":[\
        {\
            "translate":"settings.setting.$(key)",\
            "fallback":"$(name)",\
        },\
        {\
            "storage":"settings:data",\
            "nbt":'player.$(key)',\
            "interpret":'true',\
            "hoverEvent": \
            {\
                "action": "show_text",\
                "contents": \
                {\
                    "translate": "settings.change",\
                    "fallback": "Change",\
                    "color": "dark_purple"\
                }\
            },\
            "clickEvent": \
            {\
                "action":"run_command",\
            }\
        }\
    ],\
    "hoverEvent": \
    {\
        "action": "show_text",\
        "contents": \
        {\
            "translate": "settings.description.$(key)",\
            "fallback": "$(description)",\
            "color": "blue"\
        }\
    }\
}
scoreboard players operation #settings.trigger settings.data = #loop.index settings.data
scoreboard players add #settings.trigger settings.data 2
execute store result storage settings:data macro.trigger int 1 run scoreboard players get #settings.trigger settings.data
function settings:__private__/generation/trigger with storage settings:data macro
data modify storage settings:data page append value {"storage":"settings:data","nbt":"newline"}
