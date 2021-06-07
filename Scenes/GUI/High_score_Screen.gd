extends Control

onready var label = $ VBoxContainer

#There are four labels in total as a result an offset of +1 is required in get child
func _ready():
	for i in range(3):
		label.get_child(i+1).text = label.get_child(i+1).text + str(SaveSystem.data[i])

