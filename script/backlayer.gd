extends CanvasLayer



func _on_button_pressed():
	get_tree().change_scene_to_file("res://levels/mainmenu.tscn")

func _input(event):
	if event.is_action_pressed("escape"):
		get_tree().change_scene_to_file("res://levels/mainmenu.tscn")
