extends TextureButton


func _on_TextureButton_pressed():
	
	if get_tree().paused:
		get_tree().paused = false;
		$"../Pause".hide();
	else :
		get_tree().paused = true;
		$"../Pause".show();
