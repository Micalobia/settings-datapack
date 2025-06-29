# data           [obj]  => data for the setting
# # id           [str]  => item id
# # components   [obj]  => item components
# # description  [str]  => description
# # show_tooltip [bool] => whether to show the tooltip when it's hovered over
$data modify storage settings:data menus.builder.body append value \
{\
    type:"item",\
    item:{\
        id:"$(id)",\
        components:$(components),\
    },\
    description:{\
        contents:"$(description)",\
    },\
    show_tooltip:$(show_tooltip),\
}