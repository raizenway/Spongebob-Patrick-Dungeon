extends Node3D

@export var prompt: Label

@export var prompt_message = "Tekan Tombol"
@export var prompt_action = "interact"
@export var pintu: Node3D

func get_prompt():
	var key_name = ""
	for action in InputMap.action_get_events(prompt_action):
		if action is InputEventKey:
			key_name = OS.get_keycode_string(action.physical_keycode)
	return prompt_message + "\n[E / O]"

func _on_interactable_focused(interactor):
	prompt.text = ""
	prompt.text = get_prompt()


func _on_interactable_interacted(interactor):
	pintu.open_door()


func _on_interactable_unfocused(interactor):
	prompt.text = ""
