extends Control


func _on_quit_pressed():
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://Scene/menu.tscn")


func _on_retry_pressed():
	get_tree().reload_current_scene()
	visible = false
	Engine.time_scale = 1


func _on_continue_pressed():
	visible = false
	Engine.time_scale = 1

func open():
	visible = true
	Engine.time_scale = 0
