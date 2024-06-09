extends Control

func _on_play_spongebob_pressed():
	get_tree().change_scene_to_file("res://Scene/Main.tscn")

func _on_play_patrick_pressed():
	get_tree().change_scene_to_file("res://Scene/map-patrick.tscn")


func _on_exit_pressed():
	get_tree().quit()
