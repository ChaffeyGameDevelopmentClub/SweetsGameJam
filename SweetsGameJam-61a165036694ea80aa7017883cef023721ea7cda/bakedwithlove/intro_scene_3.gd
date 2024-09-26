extends Node2D

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Jump"):
		get_tree().change_scene_to_file("res://intro_scene_3.tscn")
