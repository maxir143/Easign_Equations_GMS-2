var Variables = [State,value,t]
var ArrayL = 2
for (var i = 0 ; i < array_length_1d(Variables) ; i ++) {
	for (var j = 0 ; j < ArrayL ; j ++) {
		var Var = Variables[i]
		draw_text(10+j*200,10+i*32,Var[j])
	}
}