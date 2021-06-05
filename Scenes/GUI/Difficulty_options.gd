extends Control

export(PackedScene) var game_scene

func _on_easy_button_up():
	get_tree().change_scene_to(game_scene)
	SharedData.difficulty = 0

func _on_med_button_up():
	get_tree().change_scene_to(game_scene)
	SharedData.difficulty = 1

func _on_hard_button_up():
	get_tree().change_scene_to(game_scene)
	SharedData.difficulty = 2
