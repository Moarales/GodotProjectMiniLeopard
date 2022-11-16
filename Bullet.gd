extends RigidBody2D

func _process(delta):
	gravity_scale = 0
	Input.get_gyroscope()
	print(Input.get_gyroscope())
	var gyroVector = Input.get_gyroscope()
	var direction =  Vector2(gyroVector.y,gyroVector.x);
	add_force(direction,direction*10)
