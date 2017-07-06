Tween_Step(1)

if Tween_GetState(self) == "start" {
	Tween_SetState(self,"play")
}
if Tween_GetState(self) == "end" {
	Tween_SetState(self,"reverse")
}

