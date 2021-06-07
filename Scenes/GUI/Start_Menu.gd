extends CanvasLayer

onready var high_score = $Label

func _ready():
	high_score.text = "High Score: " + str(SaveSystem.data[SharedData.difficulty])
