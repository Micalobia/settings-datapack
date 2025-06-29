$scoreboard players set #test settings.data $(setting)
data modify storage settings:data macro.data set from storage settings:data loop.value.data
execute if score #test settings.data matches 1 run data modify storage settings:data macro.data._key set from storage settings:data loop.value.key
$execute if score #test settings.data matches 1 run \
    data modify storage settings:data macro.function set from storage settings:data entries.setting_types."$(type)"
$execute if score #test settings.data matches 0 run \
    data modify storage settings:data macro.function set from storage settings:data entries.display_types."$(type)"
execute if score #test settings.data matches 1 run function settings:__private__/generation/setting with storage settings:data macro
execute if score #test settings.data matches 0 run function settings:__private__/generation/display with storage settings:data macro