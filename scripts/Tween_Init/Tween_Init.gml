/// @desc Tween an object variable
/// @arg ID
/// @arg Variable
/// @arg StartValue
/// @arg EndValue
/// @arg Time
/// @arg Type
/// @arg State 

//var Id,b,c,d,t,State,Type,value,Result;
Id		= argument0 // Identifire
value	= argument1 //Attribute
b		= argument2	//StartValue
c		= argument3 - argument2	//change in value 
d		= argument4 * room_speed //Time 
Type	= argument5	//Type
State	= argument6	//State
t		= 0			//current time	