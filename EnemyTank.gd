extends Area2D

func _process(delta):
	var bodies = get_overlapping_bodies ( );
	for body in bodies:
		if "Bullet" in body.name:
			get_node("..").queue_free()
			body.queue_free()
