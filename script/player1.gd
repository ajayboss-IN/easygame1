extends CharacterBody2D

@export var move_speed = 100
@onready var spin = $Circle

func _physics_process(_delta):
	var Input_direction = Vector2(
	Input.get_action_strength("right") - Input.get_action_strength("left"),
	Input.get_action_strength("down") - Input.get_action_strength("up"))
	
	#animation
	if velocity.x < 0:
		spin.flip_h = true
	elif  velocity.x > 1:
		spin.flip_h = false
	velocity = Input_direction * move_speed
	move_and_slide()

