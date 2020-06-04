extends Node2D

enum SoundMode {
	FULL,
	FX_ONLY,
	MUTED
}
var sound_mode = SoundMode.FULL

func toggle_sound_mode():
	if sound_mode == SoundMode.FULL:
		sound_mode = SoundMode.FX_ONLY
		$music.stop()
	elif sound_mode == SoundMode.FX_ONLY:
		sound_mode = SoundMode.MUTED
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), true)
	else:
		sound_mode = SoundMode.FULL
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), false)
		$music.play()


func set_volume(volume):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), volume)
