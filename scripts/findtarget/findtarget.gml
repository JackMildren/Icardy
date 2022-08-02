function findTarget(instance){
	enemyInstance = (instance.team == "blue") ? oEnemy : oAlly
	
	return instance_nearest(instance.x, instance.y, enemyInstance)
}