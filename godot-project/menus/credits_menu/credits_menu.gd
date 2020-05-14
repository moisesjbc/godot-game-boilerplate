extends CanvasLayer

var SceneUtils = preload("res://scripts/scene_utils.gd")

func _on_return_to_main_menu_button_pressed():
	SceneUtils.change_scene(get_tree(), 'res://menus/main_menu/main_menu.tscn')
