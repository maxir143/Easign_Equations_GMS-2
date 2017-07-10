/// @desc Tween an object variable
/// @arg Variable
/// @arg StartValue
/// @arg EndValue
/// @arg Time
/// @arg Type
/// @arg State 

var Id		= argument0 
value[Id] 	= argument1 //Attribute
b[Id] 		= argument2	//StartValue
c[Id] 		= argument3 - argument2	//change in value 
d[Id] 		= argument4 * room_speed //Time 
Type[Id] 	= argument5	//Type
State[Id] 	= argument6	//State
t[Id] 		= 0			//current time	

//StartTime
switch State[Id] {	
	case "play":
	case "start":
	case "stop":
		t[Id] = 0
	break;
	case "reverse":
	case "end":
		t[Id] = d[Id]
	break;
}
