extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event):
	if event.is_action_pressed("Pause"):
		self.visible = not self.visible
		get_tree().paused= not get_tree().paused


func _on_play_button_pressed() -> void:
	get_tree().paused= not get_tree().paused
	self.visible = not self.visible


func _on_menu_button_pressed() -> void:
	get_tree().paused= not get_tree().paused
	get_tree().change_scene_to_file("res://UI/Title Screen/title_screen.tscn")
	


func _on_exit_button_pressed() -> void:
	get_tree().quit()
