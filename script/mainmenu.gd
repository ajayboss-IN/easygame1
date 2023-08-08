extends Node2D


func _on_platbtn_pressed():
	get_tree().change_scene_to_file("res://levels/level_1.tscn")


func _on_quitbtn_pressed():
	get_tree().quit()


func _on_about_pressed():
	get_tree().change_scene_to_file("res://levels/about.tscn")
