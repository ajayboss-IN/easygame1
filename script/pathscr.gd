extends Area2D

@onready var _follow : PathFollow2D = get_parent()

@export var _speed = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	_follow.set_progress(_follow.get_progress() + _speed +delta)


func _on_body_entered(body):
	if body.name == "player":
		get_tree().reload_current_scene()
