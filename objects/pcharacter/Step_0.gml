if (hsp =! 0) image_xscale = sign(hsp)

//if (distance_to_object(target) < 60)
//{
	//spd = 0
//}

if (instance_exists(target))
{
	if (distance_to_object(target) < attackrange)
	{
		spd = 0
		script_execute(attack)
	}
	var dir=point_direction(x,y,target.x,target.y)



	hsp=lengthdir_x(spd,dir)
	vsp=lengthdir_y(spd,dir)

	x += hsp
	y += vsp
}