extends Button


export(PackedScene) var difficulty_select

func _on_Button_pressed():
#	get_tree().change_scene("res://Game.tscn")
	get_tree().change_scene_to(difficulty_select)
