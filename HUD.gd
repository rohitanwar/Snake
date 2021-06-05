extends Control

onready var parent = get_parent()
onready var Score_label = $score_lable
var current_score = 0


func _physics_process(delta):
	increase_score()
	Score_label.text = "Score " + str(current_score)
	
	#Save the score if player reaches a higher score
	if SaveSystem.data["high_score"] < current_score:
		print("saving")
		SaveSystem.data["high_score"] = current_score
		SaveSystem.save_score()

	if game_over():
		parent.game_over = false
		reset_score()

		

func game_over():
	return parent.game_over

#Increase the score when apple is eaten
func increase_score():
	if parent.apple_ate:
		parent.apple_ate = false
		current_score += 1
	
#Resets The score when playe loses
func reset_score():
	current_score = 0
