for (var i = 0; i < 4; i++)
{
	for (var j = 0; j < 6; j++)
	{
		if (gridArray[i,j] == 1)
		{
			draw_sprite_ext(sSpawnGrid,0,x+(i*256), y+(j*256), 1,1,0, c_white,0.8)
		}
	}
}