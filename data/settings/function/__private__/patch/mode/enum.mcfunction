data modify storage settings:data enum_temp set value []
execute store result score #enum.test settings.data run data get storage settings:output get
$function settings:__private__/util/loop {\
    nbt:"storage settings:data $(path)",\
    function:"settings:__private__/patch/mode/_enum with storage settings:data loop.value",\
}
$data modify storage settings:data $(path) set from storage settings:data enum_temp