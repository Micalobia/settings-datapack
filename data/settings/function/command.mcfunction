advancement revoke @s only settings:command
tag @s[tag=settings.exit] remove settings.exit
execute if score @s Settings matches ..-1 run tag @s add settings.exit
scoreboard players set @s Settings 0
execute if entity @s[tag=settings.exit] run dialog clear @s
execute if entity @s[tag=settings.exit] run return fail
function settings:__private__/util/loop {\
    nbt:"storage settings:data entries.settings",\
    function:"settings:__private__/patch/start with storage settings:data loop",\
}
function settings:__private__/util/nbt_dialog {nbt:"storage settings:data menus.root"}