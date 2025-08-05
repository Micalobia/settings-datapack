# namespace     [str] => the namespace for the menu this is added to
# type          [str] => the data type of the setting
# key           [str] => key for the setting. Cannot include '.', prefer namespace:setting format
# data          [obj] => data for the setting, always has the following:
# # display     [txt] => a nbt text component used for the display of the setting, cannot be a string
# # default     [???] => the default value of the setting, type dependent
# # ...         [???] => possibly additional data, depending on data type, consult docs
$execute unless data storage settings:data entries.menus."$(namespace)" run data modify storage settings:data entries.menu_order append value "$(namespace)"
$execute unless data storage settings:data entries.menus."$(namespace)" run data modify storage settings:data entries.menus."$(namespace)" set value []
$execute unless data storage settings:data entries.namespaces."$(namespace)" run function settings:entry/add_namespace {key:"$(namespace)",display:{text:"MISSINGNO",obfuscated:true}}
$data modify storage settings:data entries.menus."$(namespace)" append value {\
    type:"$(type)",\
    key:"$(key)",\
    setting:true,\
    data:$(data),\
}
$data modify storage settings:data users.default."$(key)" set from storage settings:data entries.menus."$(namespace)"[-1].data.default
$data modify storage settings:data entries.settings append value "$(key)"