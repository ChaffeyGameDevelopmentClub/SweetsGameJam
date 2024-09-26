extends Node2D



		
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Jump"):
		SceneTransition.change_scene_to_file("res://main_level.tscn")
		
