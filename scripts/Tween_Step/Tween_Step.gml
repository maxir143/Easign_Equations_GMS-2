/// @desc Tween an object variable
/// @arg ID
/// @arg round

var Id		= argument0
var Round	= argument1
var Result;
//tween Action
switch State[Id]{
	case "play":
		t[Id] ++
		if (t[Id] >= d[Id]){
			State[Id]	= "end"	
			t[Id]		= d[Id]
		}
	break;
	case	"reverse":
		t[Id] --
		if (t[Id] <= 0) {
			State[Id]	= "start"	
			t[Id] = 0
		}
	break;
}


//Tween Easing
var x1 = t[Id];
switch Type[Id] {
	case "Linear":
		Result = c[Id]*x1/d[Id] + b[Id]
	break;
//------------------------------------------------------------------	
	case "QuadIn":
		x1 /= d[Id]
		Result = c[Id]*x1*x1 + b[Id]
	break;
	case "QuadOut":
		x1 /= d[Id]
		Result = -c[Id]*x1*(x1-2) + b[Id]
	break;
	
	case "QuadInOut":
		x1 /= (d[Id]/2)
		if (x1 < 1) {
			Result = c[Id]/2*x1*x1 + b[Id]
		}else{
			x1 --
			Result = -c[Id]/2 * (x1*(x1-2) - 1) + b[Id]
		}
	break ;
//------------------------------------------------------------------	
	case "CubicIn":
		x1 /= d[Id]
		Result = c[Id]*x1*x1*x1 + b[Id]
	break;
	case	"CubicOut":
		x1 /= d[Id]
		x1--
		Result = c[Id]*(x1*x1*x1 + 1) + b[Id]
	break;
	case "CubicInOut":
		x1 /= d[Id]/2
		if (x1 < 1){ 
			Result =  c[Id]/2*x1*x1*x1 + b[Id]
		}else{
			x1 -= 2
			Result =  c[Id]/2*(x1*x1*x1 + 2) + b[Id]
		}
	break;
//------------------------------------------------------------------	
	case "QrtIn":
		x1 /= d[Id]
		Result =  c[Id]*x1*x1*x1*x1 + b[Id]
	break;
	case "QrtOut":
		x1 /= d[Id]
		x1 --
		Result =  -c[Id] * (x1*x1*x1*x1 - 1) + b[Id]
	break;
	case "QrtInOut":
		x1 /= d[Id]/2
		if (x1 < 1){
			Result = c[Id]/2*x1*x1*x1*x1 + b[Id]
		}else{
			x1 -= 2
			Result = -c[Id]/2 * (x1*x1*x1*x1 - 2) + b[Id]
		}
	break;

//------------------------------------------------------------------	
	case "QntIn":
		x1 /= d[Id]
		Result = c[Id]*x1*x1*x1*x1*x1 + b[Id]
	break;
	case "QntOut":
		x1 /= d[Id]
		x1 --
		Result = c[Id]*(x1*x1*x1*x1*x1 + 1) + b[Id]
	break;
	case "QntInOut":
		x1 /= d[Id]/2;
		if (x1 < 1) { 
			Result = c[Id]/2*x1*x1*x1*x1*x1 + b[Id]
		}else{
			x1 -= 2;
			Result = c[Id]/2*(x1*x1*x1*x1*x1 + 2) + b[Id]
		}
		
	break;
//------------------------------------------------------------------	
	case "SinIn":
		Result = -c[Id] * cos(x1/d * (pi/2)) + c[Id] + b[Id]
	break;
	case "SinOut":
		Result = c[Id] * sin(x1/d[Id] * (pi/2)) + b[Id]
	break;
	case "SinInOut":
		Result = -c[Id]/2 * (cos(pi*x1/d[Id]) - 1) + b[Id]
	break;
//------------------------------------------------------------------	
	case "ExpoIn":
		Result = c[Id] * power( 2, 10 * (x1/d[Id] - 1) ) + b[Id];
	break;
	case "ExpoOut":
		Result = c[Id] * (-(power( 2, -10 * x1/d[Id] )) + 1 ) + b[Id]
	break;
	case "ExpoInOut":
		x1 /= d[Id]/2;
		if (x1 < 1){
			Result = c[Id]/2 * power( 2, 10 * (x1 - 1) ) + b[Id]
		}else{
			x1 --
			Result = c[Id]/2 * ( -power( 2, -10 * x1) + 2 ) + b[Id]
		}
	break;
//------------------------------------------------------------------	
	case "CircIn":
		x1 /= d[Id]
		Result = -c[Id] * (sqrt(abs(1 - x1*x1)) - 1) + b[Id]
	break;
	case "CircOut":
		x1 /= d[Id]
		x1 --
		Result = c[Id] * sqrt(abs(1 - x1*x1)) + b[Id]
	break;
	case "CircInOut":
		x1 /= d[Id]/2
		if (x1 < 1){
			Result = -c[Id]/2 * (sqrt(1 - x1*x1) - 1) + b[Id]
		}else{
			x1 -= 2
			Result = c[Id]/2 * (sqrt(1 - x1*x1) + 1) + b[Id]
		}
		
	break;
//------------------------------------------------------------------	
	case "BounceIn":
		Result = c[Id] - outBounce(d[Id] - t[Id],0,c[Id],d[Id]) + b[Id]
	break;
	case "BounceOut":
		Result = outBounce(t[Id],b[Id],c[Id],d[Id])
	break;
	case "BounceInOut":
		if (t[Id] < (d[Id]/2)){
			Result = (c[Id] - outBounce(d[Id] - (t[Id] * 2),0,c[Id],d[Id]) + 0) * 0.5 + b[Id]
		}else{
			Result = outBounce(t[Id]*2-d[Id],0,c[Id],d[Id]) * 0.5 + c[Id] * 0.5 + b[Id]
		}
	break;
//------------------------------------------------------------------		

}
if argument1 {
	variable_instance_set(id,value[Id],round(Result))
}else{
	variable_instance_set(id,value[Id],Result)
}
