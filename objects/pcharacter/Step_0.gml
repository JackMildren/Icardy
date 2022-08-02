if (hsp =! 0) image_xscale = sign(hsp)

if (global.roundstart = false) 
{
	return	
}

if (hitPoints == 0)
{
	instance_destroy(self)
	return
}

if (!instance_exists(target))
{
	return
}

if (distance_to_object(target) < attackrange)
{
	spd = 0	
	self.sprite_index = attacksprite
}

var dir = point_direction(x,y,target.x,target.y)

hsp=lengthdir_x(spd,dir)
vsp=lengthdir_y(spd,dir)


if (place_meeting(x+hsp, y, pCharacter))
{
	while (!place_meeting(x+sign(hsp), y, pCharacter))
	{
		x += sign(hsp);
	}
		hsp = 0;
}
x += hsp

if (place_meeting(x, y+vsp, pCharacter))
{
	while (!place_meeting(x, y+sign(vsp), pCharacter))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp