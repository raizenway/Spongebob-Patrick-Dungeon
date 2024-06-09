extends Node3D

@export var open = false

var playback = null
@onready var anim = $AnimationPlayer
@onready var suaraGerbang = $suaraGerbang

func open_door():
	if !open:
		open = !open
		suaraGerbang.play()
		anim.play("open")

