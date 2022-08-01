keyleft = keyboard_check(vk_left) or keyboard_check(ord("A"))
keyright = keyboard_check(vk_right) or keyboard_check(ord("D"))
keyup = keyboard_check(vk_up) or keyboard_check(ord("W"))
keydown = keyboard_check(vk_down) or keyboard_check(ord("S"))

inputdirection = point_direction(0,0,keyright-keyleft, keydown-keyup)
inputmagnitude = (keyright - keyleft !=0) or (keydown - keyup !=0)

hsp = lengthdir_x(inputmagnitude * spd, inputdirection)
vsp = lengthdir_y(inputmagnitude * spd, inputdirection)

if (place_meeting(x+hsp, y, oCollide))
{
	while (!place_meeting(x+sign(hsp), y, oCollide))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp

if (place_meeting(x, y+vsp, oCollide))
{
	while (!place_meeting(x, y+sign(vsp), oCollide))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp