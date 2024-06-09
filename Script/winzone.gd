extends Area3D

@onready var body = 0
@export var winmenu: Control

func add_body():
	body += 1
	print("aa")
	if body == 2:
		win()

func min_body():
	body -= 1

func win():
	winmenu.visible = true
	Engine.time_scale = 0


func _on_body_entered(body):
	if body is CharacterBody3D:
		add_body()


func _on_body_exited(body):
	if body is CharacterBody3D:
		min_body()
