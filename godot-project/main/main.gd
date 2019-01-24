extends Node2D

func _process(delta):
	if Input.is_action_pressed("ui_pause"):
		$pause_menu.pause_game()
