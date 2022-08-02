if (global.roundstart = true)
{
	if (spawn = 1) 
	{
		instance_create_layer(x,y,"Instances",oEnemySword)
	}
	else if (spawn = 2) 
	{
		instance_create_layer(x,y,"Instances",oEnemySpear)
	}
	else if (spawn = 3) 
	{
		instance_create_layer(x,y,"Instances",oEnemyAxe)
	}
	instance_destroy()
}
