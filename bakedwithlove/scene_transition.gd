extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func change_scene_to_file(target: String) -> void:
	
	$AnimationPlayer.play("heart_transition_play")
	await $AnimationPlayer.animation_finished
	get_tree().change_scene_to_file(target)
	$AnimationPlayer.play_backwards("heart_transition_play")
	
func change_scene_to_file_reverse(target: String) -> void:
	get_tree().change_scene_to_file(target)
	$AnimationPlayer.play_backwards("heart_transition_play")
	await $AnimationPlayer.animation_finished

func heaven_ascension(target: String) -> void:
	get_tree().change_scene_to_file(target)
	$AnimationPlayer.play_backwards("heart_transition_play")
	await $AnimationPlayer.animation_finished
	
