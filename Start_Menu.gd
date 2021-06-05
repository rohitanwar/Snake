extends CanvasLayer


onready var high_score = $Label
# Called when the node enters the scene tree for the first time.
func _ready():
	high_score.text = "Score: " + str(SaveSystem.data["high_score"])


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
