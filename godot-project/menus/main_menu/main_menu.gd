extends CanvasLayer

var SceneUtils = preload("res://scripts/scene_utils.gd")

var music_system_node_path = '/root/music_system'

func _on_start_game_button_pressed():
	SceneUtils.change_scene(get_tree(), "res://main/main.tscn")


func _on_exit_game_button_pressed():
	get_tree().quit()


func _on_credits_button_pressed():
	SceneUtils.change_scene(get_tree(), "res://menus/credits_menu/credits_menu.tscn")


func _on_how_to_play_button_pressed():
	SceneUtils.change_scene(get_tree(), "res://menus/how_to_play_menu/how_to_play_menu.tscn")



func _on_toggle_sound_button_pressed():
	SceneUtils.change_scene(get_tree(), "res://menus/options_menu/options_menu.tscn")
