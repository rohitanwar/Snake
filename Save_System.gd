extends Node

var data := {
	0 : 0,
	1 : 0,
	2 : 0,
}

#Directory of save file
onready var path = "user://saved.dat"


func _ready():
	var dir = Directory.new()
	if dir.file_exists(path):
		data = load_score()#Loading saved data when the game starts
#Saves data on a file
func save_score():
	var file = File.new()
	var err = file.open(path, File.WRITE)
	
	if err != OK:
		print("file could not be saved")
		return
	else:
		print("saved")
		file.store_var(data)
		file.close()

#Loads saved data from the file
func load_score():
	
	var file = File.new()
	var err = file.open(path, File.READ)
	
	if err != OK:
		print("file could not be loaded")
	var read = {}
	read = file.get_var()
	return read
	
