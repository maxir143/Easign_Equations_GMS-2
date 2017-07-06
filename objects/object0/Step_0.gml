Tween_Step(1)

if Tween_GetState(self) == "start" {
	Tween_Set("image_angle",0,irandom_range(360,720), 3,"ExpoInOut", "start")
	Tween_SetState(self,"play")	
}
if Tween_GetState(self) == "end" {
	Tween_SetState(self,"reverse")
}

