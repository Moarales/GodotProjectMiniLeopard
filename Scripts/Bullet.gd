extends RigidBody2D

func _process(delta):
	gravity_scale = 0
	var prevVelocity = linear_velocity;
	var gyroVector = Input.get_gyroscope()
	var direction =  Vector2(gyroVector.y,gyroVector.x);
	add_force(direction,direction*500)
	if prevVelocity.length() > 0  :
	 linear_velocity = prevVelocity;
	

