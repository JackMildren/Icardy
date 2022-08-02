function findTarget(instance){
	closestDistance = 1000000
	currentTarget = 0
	
	for (var i = 0; i < instance_number(pCharacter); ++i;)
	{
		targetInstance = instance_find(pCharacter,i);
		if (targetInstance.team = instance.team)
		{
			continue
		}
				
		currentDistance = point_distance(instance.x, instance.y, targetInstance.x, targetInstance.y)
		if (currentDistance < closestDistance)
		{
			currentTarget = targetInstance
		}
	}
	
	return currentTarget
}