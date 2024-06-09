extends Node3D

@export var open = false

var playback = null
@onready var anim = $AnimationPlayer

func _ready():
	print(transform)

func open_door():
	if !open:
		open = !open
		anim.play("open")

