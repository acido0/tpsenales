extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

const rojo = preload("res://scenes/Blocks/Red/BlockRed.tscn")
const morado = preload("res://scenes/Blocks/Violet/BlockViolet.tscn")

var cuborojo
var cubomorado

func generate_block():
	cuborojo = rojo.instance()
	cubomorado = morado.instance()
	
	pass

func _process(delta):
	generate_block()
	pass
	
	
func count_new_instance():
	instancesCount +=1
	$CountLabel.text = INSTANCES_TEXT + String(instancesCount)
	
	pass

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + String(instancesCount)
	pass

func delet():
	instancesCount = 0
	$CountLabel.text = INSTANCES_TEXT + String(instancesCount)

func _on_RedGenerator_button_down():
	get_parent().add_child(cuborojo)
	count_new_instance()
	pass # Replace with function body.


func _on_VioletGenerator_button_down():
	get_parent().add_child(cubomorado)
	count_new_instance()
	pass # Replace with function body.


func _on_Reset_button_down():
	Delete.delete()
	delet()
	
	pass # Replace with function body.
