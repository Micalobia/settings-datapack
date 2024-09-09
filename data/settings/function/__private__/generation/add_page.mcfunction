scoreboard players add #settings.number settings.data 1
execute store result storage settings:data macro.page int 1 run scoreboard players get #settings.number settings.data
$summon text_display ~ ~ ~ {view_range:0,Tags:["settings.fresh"],text:'{"storage":"settings:data","nbt":"book[$(page)]","interpret":true}'}
data modify storage settings:data loading_page set value {}
data modify storage settings:data loading_page.raw set from entity @n[type=text_display,tag=settings.fresh] text
data modify entity @s item.components."minecraft:written_book_content".pages append from storage settings:data loading_page
kill @n[type=text_display,tag=settings.fresh]
# $item modify entity @s weapon.mainhand settings:page/$(page)