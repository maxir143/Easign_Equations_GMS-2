///Tween_Action(Id,Action)
var Id	= argument0;
var Action = argument1;

switch Action{
	case "play":
	case	"reverse":
	case "stop":
	case "start":
	case "end":
		Tween[Id,5] = Action	
	break;
}