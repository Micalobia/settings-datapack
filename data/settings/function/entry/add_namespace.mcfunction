# key           [str] => the key for the namespace
# display       [txt] => json text representing how it's displayed, cannot be a plain string
$data modify storage settings:data entries.namespaces."$(key)".display set value $(display)