///Tween_Action(Id,Action)
var Id	= argument0;
var Action = argument1;

switch Action{
	case	"reverse":
	case "stop":
	case "end":
		Tween[Id,7] = Action	
	break;
}