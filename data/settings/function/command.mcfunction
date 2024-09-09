advancement revoke @s only settings:command
scoreboard players set @s Settings 0
function settings:ephemeral
execute if function #settings:__private__/invalid run return fail

summon item_display ~ ~ ~ {view_range:0,Tags:["settings.fresh"]}
loot replace entity @n[type=item_display,tag=settings.fresh] container.0 loot settings:settings_book

function settings:__private__/player/self

scoreboard players set #settings.number settings.data 0
data modify storage settings:data macro.page set value 0
tag @s add settings.loading
execute as @n[type=item_display,tag=settings.fresh] run function settings:__private__/util/loop {\
    nbt:"storage settings:data book",\
    function:"settings:__private__/generation/add_page with storage settings:data macro"\
}
tag @s remove settings.loading



item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=settings.fresh] container.0
kill @n[type=item_display,tag=settings.fresh]

scoreboard players set #settings.number settings.data 0
data modify storage settings:data macro.page set value 0
function settings:__private__/util/loop {\
    nbt:"storage settings:data book",\
    function:"settings:__private__/generation/add_page with storage settings:data macro"\
}