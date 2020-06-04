extends Control

var SceneUtils = preload("res://scripts/scene_utils.gd")
const music_system_node_path = '/root/music_system'

func _ready():
	print_sound_mode()

func _on_return_button_pressed():
	SceneUtils.change_scene(get_tree(), "res://menus/main_menu/main_menu.tscn")


func _on_toggle_sound_button_pressed():
	get_node(music_system_node_path).toggle_sound_mode()
	print_sound_mode()


func print_sound_mode():
	var sound_mode = get_node(music_system_node_path).sound_mode
	var sound_mode_label = ''
	if sound_mode == get_node(music_system_node_path).SoundMode.FULL:
		sound_mode_label = 'FULL'
	elif sound_mode == get_node(music_system_node_path).SoundMode.FX_ONLY:
		sound_mode_label = 'FX ONLY'
	else:
		sound_mode_label = 'MUTED'
		
	$center_container/vbox_container/sound_submenu/toggle_sound_button.text = "Toggle sound mode [" + sound_mode_label + "]"
