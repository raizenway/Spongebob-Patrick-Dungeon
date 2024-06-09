extends Area3D

@export var dead_menu: Control

func _on_body_entered(body):
	if body is CharacterBody3D:
		Engine.time_scale = 0
		dead_menu.visible = true
