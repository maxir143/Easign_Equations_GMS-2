/// @desc Tween an object variable
/// @arg Variable
/// @arg StartValue
/// @arg EndValue
/// @arg Time
/// @arg Type
/// @arg State 

value	= argument0 //Attribute
b		= argument1	//StartValue
c		= argument2 - argument1	//change in value 
d		= argument3 * room_speed //Time 
Type	= argument4	//Type
State	= argument5	//State
t		= 0			//current time	

//StartTime
switch State {	
	case "play":
	case "start":
	case "stop":
		t = 0
	break;
	case "reverse":
	case "end":
		t = d
	break;
}
