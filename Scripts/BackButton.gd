extends MenuButton



func _on_MenuButton_pressed():
	get_tree().paused = false;
	get_tree().change_scene("res://Scenes/Menu.tscn")

