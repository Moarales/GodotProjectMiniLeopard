extends Area2D




func _process(delta):
	var bodies = get_overlapping_bodies ( );
	for body in bodies:
		if "Bullet" in body.name:
			
			#do nothing if it was already destroyed;
			if $"../Explosion".playing :
				return;
			
			
			#destroy sprite
			$"../Sprite2".queue_free()
			$"..".texture = null
			#destroy bullet
			body.queue_free()
			#show and start anim
			$"../Explosion".show();
			$"../Explosion".playing = true;
			$"../AudioStreamPlayer2D".play();



func _on_Explosion_animation_finished():
	#destory object when animn is finished;
	get_node("..").queue_free()
