data modify storage settings:data loop.value.initial set value false
$execute if score #enum.test settings.data matches $(id) run data modify storage settings:data loop.value.initial set value true
data modify storage settings:data enum_temp append from storage settings:data loop.value