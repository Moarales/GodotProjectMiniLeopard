extends Sprite

var angular_speed = PI

const bullet = preload("res://Prefabs/Bullet.tscn")

var timePassed = 0

func _process(delta):

	#rotation += angular_speed*delta
	look_at(get_global_mouse_position())
	rotation += PI/2

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

	direction.x = cos((rotation-90)*PI/180)
	direction.y = sin((rotation-90)*PI/180)
	
	GrabedInstance.add_force(direction*100,direction*1000)


	
