extends Node3D

@export var prompt: Label
@onready var k = $K

@export var prompt_message = "Taruh Kunci"
@export var prompt_action = "interact"
@export var pair: Node3D
@onready var kunci = false
@export var player: CharacterBody3D
func get_prompt():
	var key_name = ""
	for action in InputMap.action_get_events(prompt_action):
		if action is InputEventKey:
			key_name = OS.get_keycode_string(action.physical_keycode)
	return prompt_message + "\n[E / O]"

func tele():
	kunci = true
	k.visible = true
	prompt_message = "Ambil Kunci"

func _on_interactable_focused(interactor):
	prompt.text = ""
	prompt.text = get_prompt()

func _on_interactable_interacted(interactor):
	if kunci:
		kunci = false
		k.visible = false
		prompt_message = "Taruh Kunci"
	else:
		if player.key_hold > 0:
			pair.tele()
			player.min_key()


func _on_interactable_unfocused(interactor):
	prompt.text = ""
