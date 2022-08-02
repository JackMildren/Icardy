function findTarget(instance){
	enemyInstance = (instance.team == "blue") ? oEnemy : oAlly
	
	nearestEnemy = instance_nearest(instance.x, instance.y, enemyInstance)
	
	//if (!instance_exists(nearestEnemy) || nearestEnemy.hitPoints == 0) {
	//	return 0
	//}
	
	return nearestEnemy
}