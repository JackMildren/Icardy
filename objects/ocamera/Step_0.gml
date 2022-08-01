if (instance_exists(follow))
{
	xTo = follow.x
	yTo = follow.y
}

x += (xTo - x) /15
y += (yTo - y) /15
	
x = clamp(x, viewWidthHalf, room_width-viewWidthHalf)
y = clamp(y, viewHeightHalf, room_height-viewHeightHalf)

x += random_range(- shakeRemian,shakeRemian)
y += random_range(- shakeRemian,shakeRemian)

shakeRemian = max(0, shakeRemian - ((1/shakeLength) * shakeMag))

camera_set_view_pos(cam, x - viewWidthHalf,y - viewHeightHalf)

