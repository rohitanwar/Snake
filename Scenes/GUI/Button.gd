extends Button


export(PackedScene) var game_scene

func _on_Button_pressed():
#	get_tree().change_scene("res://Game.tscn")
	get_tree().change_scene_to(game_scene)
