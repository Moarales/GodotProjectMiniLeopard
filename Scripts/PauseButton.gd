extends TextureButton
		
func _on_TextureButton_pressed():
	pause()

func pause():
	if get_tree().paused:
		get_tree().paused = false;
		$"../Pause".hide();
		$"../AudioStreamPlayer".play();
	else :
		get_tree().paused = true;
		$"../Pause".show();
		$"../AudioStreamPlayer".stop();
