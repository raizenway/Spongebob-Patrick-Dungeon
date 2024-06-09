extends Area3D

@export var dead_menu: Control
@onready var suaraMati = $suaraMati

func _on_body_entered(body):
	if body is CharacterBody3D:
		suaraMati.play()
		Engine.time_scale = 0
		dead_menu.visible = true
