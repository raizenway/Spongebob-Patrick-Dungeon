extends Node

func _on_play():
	get_tree().change_scene_to_file("res://Scene/scene-1.tscn")


func _on_exit_pressed():
	get_tree().quit()
