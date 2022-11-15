extends Sprite

var speed = 400
var angular_speed = PI

const bullet = preload("res://Bullet.tscn")

var timePassed = 0

func _process(delta):
	
	
	if timePassed > 2 :
		shootBullet()
		timePassed = 0;
	
	rotation += angular_speed+delta
	
	var velocity = Vector2.UP.rotated(rotation) * speed

	position += velocity * delta
	
	
	timePassed += delta
	

	
	
	
func shootBullet():
	print("ShootBulletCalled")
	#Make instance
	var GrabedInstance= bullet.instance()
	#You could now make changes to the new instance if you wanted
	#Attach it to the tree
	self.add_child(GrabedInstance)
