extends Area2D


@export_category("Rotation")
@export var rotation_speed = 0.01


func _physics_process(delta):
	rotate(rotation_speed)
	


func _on_body_entered(body):
	if body.name == "player":
		get_tree().reload_current_scene()
		#get_tree().change_scene_to_file("res://scene/mainmenu.tscn")
