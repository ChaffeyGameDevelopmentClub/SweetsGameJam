extends Node2D



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Jump"):
		get_tree().change_scene_to_file("res://intro_scene_2.tscn")
		
