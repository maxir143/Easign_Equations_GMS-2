/// @desc Set an Instance Tween State
/// @arg Instance
/// @arg State

if instance_exists(argument0){
	variable_instance_set(argument0,"State",argument1)
}else{
	show_debug_message("Error: Instance Not Found")
}