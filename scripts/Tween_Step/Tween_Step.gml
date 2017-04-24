///Tween_Step()
//Ease values
for(var i = 0; i < array_height_2d(Tween); i ++){
var b,c,d,t,State,Type,value;
b		= Tween[i,1]				//start value 
c		= Tween[i,2] - Tween[i,1]	//change in value 
d		= Tween[i,3] * room_speed	//duration 
t		= Tween[i,6]				//current time	
State	= Tween[i,5]
Type		= Tween[i,4]
value	= Tween[i,0]
//tween Action
switch State{
	case "play":
		if t >= d {State = "stop"; break}
		t ++
	break;
	case	"reverse":
		if t <= 0 {State = "stop"; break}
		t --
	break;
	case "stop":	
	break;
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
		Result = -c * (sqrt(1 - x1*x1) - 1) + b
	break;
	case "CircOut":
		x1 /= d
		x1 --
		Result = c * sqrt(1 - x1*x1) + b
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
Tween[i,6] = t
variable_instance_set(self,value,Result)
}
