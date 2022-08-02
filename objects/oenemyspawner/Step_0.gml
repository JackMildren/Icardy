if (global.roundstart = true)
{
	if (spawn = 1) instance_create_layer(x,y,"Instances",oEnemySword)
	if (spawn = 2) instance_create_layer(x,y,"Instances",oEnemySpear)
	instance_destroy()
}