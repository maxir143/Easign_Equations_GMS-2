/// @desc Get The Tween State from and instance
/// @arg Instance

if instance_exists(argument0){
	return argument0.State
}else{
	show_debug_message("Error: Instance Not Found")
}