# key           [str] => the key for the namespace
# name          [str] => the name of the namespace for display reasons
# description   [str] => the description of the namespace
$data modify storage settings:data entries.namespaces."$(key)" set value {\
    name:"$(name)",\
    description:"$(description)",\
}