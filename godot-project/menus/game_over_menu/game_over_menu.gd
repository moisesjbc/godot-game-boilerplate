extends CenterContainer


func pause_game():
	get_tree().paused = true
	visible = true

func unpause_game():
	get_tree().paused = false
	visible = false

func _on_resume_button_pressed():
	unpause_game()

func _on_return_button_pressed():
	unpause_game()
	get_tree().change_scene("res://menus/main_menu/main_menu.tscn")
