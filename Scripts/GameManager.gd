extends Node

func _notification(what):
	# Record keys.
	
	if what == MainLoop.NOTIFICATION_APP_PAUSED:
		$PauseButton.pause()
		


func _process(delta):
	#Count Enemy Tanks
	var enemyTanks = get_tree().get_nodes_in_group("enemies")
	
	if enemyTanks.size() > 0:
		return;
		
	$LevelWon.show();
		
