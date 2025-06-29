# namespace     [str] => the namespace for the menu this is added to
# type          [str] => the data type of the display
# data          [obj] => data for the display
# # ...         [???] => additional data, depending on data type, consult docs
$execute unless data storage settings:data entries.menus."$(namespace)" run data modify storage settings:data entries.menu_order append value "$(namespace)"
$execute unless data storage settings:data entries.menus."$(namespace)" run data modify storage settings:data entries.menus."$(namespace)" set value []
$data modify storage settings:data entries.menus."$(namespace)" append value {\
    type:"$(type)",\
    setting:false,\
    data:$(data),\
}