var t,b,c,d,x1;
t = argument0
b = argument1
c = argument2
d = argument3

x1 = t / d
if (x1 < 1 / 2.75) {
	return c * (7.5625 * x1 * x1) + b
}else if (x1 < 2 / 2.75){
	x1 = x1 - (1.5 / 2.75)
	return c * (7.5625 * x1 * x1 + 0.75) + b
}else if (x1 < 2.5 / 2.75) {
	x1 = x1 - (2.25 / 2.75)
	return c * (7.5625 * x1 * x1 + 0.9375) + b
} else{
	x1 = x1 - (2.625 / 2.75)
	return c * (7.5625 * x1 * x1 + 0.984375) + b
}