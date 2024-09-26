extends Node2D


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Jump"):
		Scene_Change_To.change_scene_to_file_reverse("res://main_level.tscn")
		
