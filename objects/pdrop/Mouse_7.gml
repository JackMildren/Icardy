if (place = true)
{
	if (place_meeting(x, y, oSpawnGrid))
	{
		instance_destroy()
		instance_create_layer(xaxi,yaxi,"Instances",whatdrop)
	}
}