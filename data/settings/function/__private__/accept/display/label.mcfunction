# data          [obj] => data for the setting
# # text        [str] => the text for the label, plain string
$data modify storage settings:data menus.builder.body append value \
{\
    type:"plain_message",\
    contents:"$(text)"\
}