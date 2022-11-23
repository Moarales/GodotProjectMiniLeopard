extends TextureButton

func _on_TextureButton_pressed():
	get_tree().paused = true;
	$Prefabs/PauseMenu.show()
