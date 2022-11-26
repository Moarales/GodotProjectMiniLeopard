extends Node

func _notification(what):
	# Record keys.
	
	if what == MainLoop.NOTIFICATION_APP_PAUSED:
		$AudioStreamPlayer.stop();

	if what == MainLoop.NOTIFICATION_APP_RESUMED:
		$AudioStreamPlayer.play();
	
	if what == MainLoop.NOTIFICATION_WM_GO_BACK_REQUEST:
		get_tree().quit();
