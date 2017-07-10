/// @desc Get The Tween State from and instance
/// @arg Instance
/// @arg ID
Id = argument1
if instance_exists(argument0){
	return argument0.State[Id]
}else{
	show_debug_message("Error: Instance Not Found")
}