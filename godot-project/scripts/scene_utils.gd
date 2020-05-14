
static func change_scene(tree, scene_name: String):
	if tree.change_scene(scene_name) != OK:
		print("ERROR: couldn't load scene %s" % scene_name)
