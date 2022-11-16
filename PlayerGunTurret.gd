extends Sprite

var angular_speed = PI

const bullet = preload("res://Bullet.tscn")

var timePassed = 0

func _process(delta):
	
	

	
	rotation += angular_speed*delta
	
		
	
	if timePassed > 2 :
		shootBullet(rotation_degrees)
		timePassed = 0;
		

	
	timePassed += delta
	

	
	
	
func shootBullet(rotation):
	print("ShootBulletCalled")
	#Make instance
	var GrabedInstance = bullet.instance()
	#Attach it to the tree
	get_parent().add_child(GrabedInstance)
	#calculate Position of Gun Turret
	var tipGun = get_node("TipGun")
	var baseGun = get_node("BaseGun")
	
	var direction =  Vector2(0,0);
	direction.x = cos(rotation)
	direction.y = sin(rotation)
	
	var shootVector= tipGun.position - baseGun.position
	print(shootVector)
	
	
	var rigidBody = GrabedInstance.get_node("RigidBody2D")
	GrabedInstance.add_force(direction*100,direction*100)


	
