extends Area2D

@onready var _follow : PathFollow2D = get_parent()

@export var _speed = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	_follow.set_progress(_follow.get_progress() + _speed +delta)
