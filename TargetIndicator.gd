extends Node2D

#func _ready():
	#set_process(true)
	
	
	
#func _process(delta):
	#update();
	
func _draw():
	draw_line(get_parent().position,position*10, Color(255, 0, 0), 1)
