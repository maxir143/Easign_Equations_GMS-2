Tween_Step(0,0)
Tween_Step(1,0)

if Tween_GetState(self,0) == "start" or Tween_GetState(self,1) == "start" {
	//Tween_Set(0,"image_angle",0,360, 1,"ExpoOut", "start")
	Tween_SetState(self,0,"play")	
	Tween_SetState(self,1,"play")	
}
if Tween_GetState(self,0) == "end" or Tween_GetState(self,1) == "end" {
	Tween_SetState(self,0,"reverse")
	Tween_SetState(self,1,"reverse")
}

