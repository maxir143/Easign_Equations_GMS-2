///Tween_Init(Id, Attribute, StartValue, EndValue, Time(s), TweenType, State)
var Id;
Id			= argument0
Tween[Id,0]	= argument1	//Attribute
Tween[Id,1]	= argument2	//StartValue
Tween[Id,2]	= argument3	//EndValue
Tween[Id,3]	= argument4	//Time
Tween[Id,4]	= argument5	//Type
Tween[Id,5]	= argument6	//State
Tween[Id,6]	= 0	
Tween[Id,7]	= "end" 

switch Tween[Id,5]{	//StartTime
	case "play":
	case "start":
	case "stop":
		Tween[Id,6] = 0
	break;
	case	"reverse":
	case "end":
		Tween[Id,6] = Tween[Id,3] * room_speed
	break;
}