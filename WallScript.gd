extends Area2D


func _process(delta):
	var bodies = get_overlapping_bodies ( );
	for body in bodies:
		if "Bullet" in body.name:
			body.queue_free()
