extends Node3D

@export_group("FOV")
@export var change_fov_on_run : bool
@export var normal_fov : float = 75.0
@export var run_fov : float = 90.0

const CAMERA_BLEND : float = 0.05

@onready var spring_arm : SpringArm3D = $SpringArm3D
@onready var camera : Camera3D = $SpringArm3D/Camera3D
const ROTATION_SPEED : float = 5.0

@export var controls: KeyBind = null

func _ready():
	pass

func _unhandled_input(event):
	pass


func _physics_process(_delta):
	if Input.is_action_pressed(controls.kiri):
		rotate_y(ROTATION_SPEED * _delta)
	elif Input.is_action_pressed(controls.kanan):
		rotate_y(-ROTATION_SPEED * _delta)
	
	# Handle FOV changes on running
	if change_fov_on_run:
		if owner.is_on_floor():
			if Input.is_action_pressed(controls.lompat):
				camera.fov = lerp(camera.fov, run_fov, CAMERA_BLEND)
			else:
				camera.fov = lerp(camera.fov, normal_fov, CAMERA_BLEND)
		else:
			camera.fov = lerp(camera.fov, normal_fov, CAMERA_BLEND)
