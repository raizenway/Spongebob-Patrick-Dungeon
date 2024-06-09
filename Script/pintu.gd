extends Node3D

@export var open = false
@export var prompt: Label

var playback = null
@onready var animation_player = $AnimationPlayer
@export var prompt_message = "Buka Pintu"
@export var prompt_action = "interact"
@export var player: CharacterBody3D
@onready var suaraPintu = $suaraPintu

func open_door():
	if !open:
		open = !open
		animation_player.play("open")
		open = true
		suaraPintu.play()

func get_prompt():
	var key_name = ""
	for action in InputMap.action_get_events(prompt_action):
		if action is InputEventKey:
			key_name = OS.get_keycode_string(action.physical_keycode)
	return prompt_message + "\n[E / O]"

func _on_interactable_focused(interactor):
	if !open:
		prompt.text = ""
		prompt.text = get_prompt()


func _on_interactable_interacted(interactor):
	if player.key_hold > 0:
		open_door()
		player.min_key()


func _on_interactable_unfocused(interactor):
	prompt.text = ""
