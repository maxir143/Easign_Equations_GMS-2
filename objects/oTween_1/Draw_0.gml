draw_self();
draw_set_valign(fa_center)
draw_set_halign(fa_center)
draw_set_font(fntEasingType)
draw_text(x,y,Tween[0,5])

if id = 100001{
	draw_set_font(fntEasing)
	draw_text(480,40,"Easing Equations")
	draw_set_font(fntEasingType)
	draw_text(480,72,"Controls Up and Down")
}