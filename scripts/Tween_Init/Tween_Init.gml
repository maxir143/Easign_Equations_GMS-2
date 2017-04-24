///Tween_Init(Id, Attribute, StartValue, EndValue, Time(s), TweenType, State)
var Id;
Id			= argument0
Tween[Id,0]	= argument1	//Attribute
Tween[Id,1]	= argument2	//StartValue
Tween[Id,2]	= argument3	//EndValue
Tween[Id,3]	= argument4	//Time
Tween[Id,4]	= argument5	//Type
Tween[Id,5]	= argument6	//State
Tween[Id,6]	= 0			//StartTime

if Tween[Id,5] = "reverse"{
	Tween[Id,6] = Tween[Id,3] * room_speed
}

/*
	Code Created by : http://mlab.me
	Code Reference	 : http://gizma.com/easing
*/