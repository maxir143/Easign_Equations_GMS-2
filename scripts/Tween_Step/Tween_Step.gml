// @desc 
///Tween_Step()
Id			= argument0
Tween[Id,0]	= 	
Tween[Id,1]	= 
Tween[Id,2]	= 	
Tween[Id,3]	= 
Tween[Id,4]	= 
Tween[Id,5]	= argument6	//State
Tween[Id,6]	= 0	
Tween[Id,7]	= "end" 

switch Tween[Id,5]{	//StartTime
	case "play":
	case "start":
	case "stop":
		Tween[Id,6] = 0
	break;
	case "reverse":
	case "end":
		Tween[Id,6] = Tween[Id,3] * room_speed
	break;
}
//Ease values
for(var i = 0; i < array_height_2d(Tween); i ++){
var b,c,d,t,State,Type,value;
value	= argument1 //Attribute
b		= argument2	//StartValue
c		= argument3 - argument2	//change in value  // argument2 EndValue
d		= argument4 * room_speed //Time 
Type	= argument5	//Type
State	= argument6	//State
t		= Tween[i,6]				//current time	



//tween Action
// or (t == 0)
switch State{
	case "play":
		t ++
	break;
	case	"reverse":
		t --
	break;
	case "stop":
	case "start":
		if (Tween[i,6] != 0) {
			Tween[i,6] = 0
		}
	case "end":	
		if (Tween[i,6] != Tween[i,3] * room_speed) {
			Tween[i,6] = Tween[i,3] * room_speed
		}
	break;
}
if (t >= Tween[i,3] * room_speed){
	Tween[i,5]	= "end"	
	Tween[i,6]	= 0	
}
if (t <= 0) {
	Tween[i,5]	= "start"	
	Tween[i,6] = Tween[i,3] * room_speed	
}
//Tween Easing
var x1 = t;
switch Type {
	case "Linear":
		Result = c*x1/d + b
	break;
//------------------------------------------------------------------	
	case "QuadIn":
		x1 /= d
		Result = c*x1*x1 + b
	break;
	case "QuadOut":
		x1 /= d
		Result = -c*x1*(x1-2) + b
	break;
	
	case "QuadInOut":
		x1 /= (d/2)
		if (x1 < 1) {
			Result = c/2*x1*x1 + b
		}else{
			x1 --
			Result = -c/2 * (x1*(x1-2) - 1) + b
		}
	break ;
//------------------------------------------------------------------	
	case "CubicIn":
		x1 /= d
		Result = c*x1*x1*x1 + b
	break;
	case	"CubicOut":
		x1 /= d
		x1--
		Result = c*(x1*x1*x1 + 1) + b
	break;
	case "CubicInOut":
		x1 /= d/2
		if (x1 < 1){ 
			Result =  c/2*x1*x1*x1 + b
		}else{
			x1 -= 2
			Result =  c/2*(x1*x1*x1 + 2) + b
		}
	break;
//------------------------------------------------------------------	
	case "QrtIn":
		x1 /= d
		Result =  c*x1*x1*x1*x1 + b
	break;
	case "QrtOut":
		x1 /= d
		x1 --
		Result =  -c * (x1*x1*x1*x1 - 1) + b
	break;
	case "QrtInOut":
		x1 /= d/2
		if (x1 < 1){
			Result = c/2*x1*x1*x1*x1 + b
		}else{
			x1 -= 2
			Result = -c/2 * (x1*x1*x1*x1 - 2) + b
		}
	break;

//------------------------------------------------------------------	
	case "QntIn":
		x1 /= d
		Result = c*x1*x1*x1*x1*x1 + b
	break;
	case "QntOut":
		x1 /= d
		x1 --
		Result = c*(x1*x1*x1*x1*x1 + 1) + b
	break;
	case "QntInOut":
		x1 /= d/2;
		if (x1 < 1) { 
			Result = c/2*x1*x1*x1*x1*x1 + b
		}else{
			x1 -= 2;
			Result = c/2*(x1*x1*x1*x1*x1 + 2) + b
		}
		
	break;
//------------------------------------------------------------------	
	case "SinIn":
		Result = -c * cos(x1/d * (pi/2)) + c + b
	break;
	case "SinOut":
		Result = c * sin(x1/d * (pi/2)) + b
	break;
	case "SinInOut":
		Result = -c/2 * (cos(pi*x1/d) - 1) + b
	break;
//------------------------------------------------------------------	
	case "ExpoIn":
		Result = c * power( 2, 10 * (x1/d - 1) ) + b;
	break;
	case "ExpoOut":
		Result = c * (-(power( 2, -10 * x1/d )) + 1 ) + b
	break;
	case "ExpoInOut":
		x1 /= d/2;
		if (x1 < 1){
			Result = c/2 * power( 2, 10 * (x1 - 1) ) + b
		}else{
			x1 --
			Result = c/2 * ( -power( 2, -10 * x1) + 2 ) + b
		}
	break;
//------------------------------------------------------------------	
	case "CircIn":
		x1 /= d
		Result = -c * (sqrt(abs(1 - x1*x1)) - 1) + b
	break;
	case "CircOut":
		x1 /= d
		x1 --
		Result = c * sqrt(abs(1 - x1*x1)) + b
	break;
	case "CircInOut":
		x1 /= d/2
		if (x1 < 1){
			Result = -c/2 * (sqrt(1 - x1*x1) - 1) + b
		}else{
			x1 -= 2
			Result = c/2 * (sqrt(1 - x1*x1) + 1) + b
		}
		
	break;
//------------------------------------------------------------------	
	case "BounceIn":
		Result = c - outBounce(d - t,0,c,d) + b
	break;
	case "BounceOut":
		Result = outBounce(t,b,c,d)
	break;
	case "BounceInOut":
		if (t < (d/2)){
			Result = (c - outBounce(d - (t * 2),0,c,d) + 0) * 0.5 + b
		}else{
			Result = outBounce(t*2-d,0,c,d) * 0.5 + c * 0.5 + b
		}
	break;
//------------------------------------------------------------------		
}

if (t >= Tween[i,3] * room_speed){
	Tween[i,5]	= Tween[i,7]		
	Tween[i,6]	= Tween[i,3] * room_speed
	exit;
}
if (t <= 0) {
	Tween[i,5]	= "start"	
	Tween[i,6]	= 0	
	exit;
}
Tween[i,6] = t
variable_instance_set(self,value,Result)
}
