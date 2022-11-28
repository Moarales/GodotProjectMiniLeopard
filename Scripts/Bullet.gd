extends RigidBody2D

func _process(delta):
	gravity_scale = 0
	var prevVelocity = linear_velocity;
	var gyroVector = Input.get_gyroscope()
	
	var accVector = Input.get_accelerometer();
	var accDirection = Vector2(accVector.x,-accVector.y);
	var direction =  Vector2(gyroVector.y,gyroVector.x);
	
	var bulletDirection = accDirection;
	
	add_force(bulletDirection,bulletDirection*100)
	if prevVelocity.length() > 0  :
	 linear_velocity = prevVelocity;
	

