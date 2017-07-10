/// @desc Set an Instance Tween State
/// @arg Instance
/// @arg ID
/// @arg State

var Id = argument1
if instance_exists(argument0){
	argument0.State[Id] = argument2
}else{
	show_debug_message("Error: Instance Not Found")
}