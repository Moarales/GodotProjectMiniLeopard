extends Sprite

var angular_speed = PI

var timePassed = 0

func _process(delta):
	rotation += angular_speed*delta
	timePassed += delta

