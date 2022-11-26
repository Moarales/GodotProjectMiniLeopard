extends MenuButton



func _notification(what):
	# go back to menu if game is paused
	if what == MainLoop.NOTIFICATION_WM_GO_BACK_REQUEST:
		if get_tree().paused == true:
			get_tree().change_scene("res://Scenes/Menu.tscn")


func _on_MenuButton_pressed():
	get_tree().paused = false;
	get_tree().change_scene("res://Scenes/Menu.tscn")

