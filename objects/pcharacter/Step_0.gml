if (hsp =! 0) image_xscale = sign(hsp)

if (global.roundstart) {
if (hitPoints == 0)
{
	instance_destroy(self)
	return
}

if (instance_exists(target))
{
	if (instance_exists(target))
	{
		spd = 0
		
		self.sprite_index = sAttack
	}
	var dir=point_direction(x,y,target.x,target.y)



		hsp=lengthdir_x(spd,dir)
		vsp=lengthdir_y(spd,dir)

		x += hsp
		y += vsp
	}
}