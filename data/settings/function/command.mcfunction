advancement revoke @s only settings:command
scoreboard players set @s Settings 0
function settings:__private__/util/loop {\
    nbt:"storage settings:data entries.settings",\
    function:"settings:__private__/patch/start with storage settings:data loop",\
}
function settings:__private__/util/nbt_dialog {nbt:"storage settings:data menus.root"}