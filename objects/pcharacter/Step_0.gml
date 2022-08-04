if (hsp =! 0) image_xscale = sign(hsp)

spd = defaultSpeed

if (global.roundstart = false) 
{
	return	
}

if (hitPoints == 0)
{
	instance_destroy()
	return
}

target = findTarget(self)

if (instance_exists(target))
{
	sprite_index = walksprite
}else {return}

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
	sprite_index = idlesprite	
}
x += hsp

if (place_meeting(x, y+vsp, pCharacter))
{
	while (!place_meeting(x, y+sign(vsp), pCharacter))
	{
		y += sign(vsp);
	}
	vsp = 0;
	sprite_index = idlesprite	
}
y += vsp