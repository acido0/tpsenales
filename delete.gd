extends Node


func _ready():
	delete()
	pass # Replace with function body.


func delete():
	get_tree().reload_current_scene()

	pass
