extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Hello")
	get_tree().paused =false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	get_tree().paused =false
	pass


func _on_pressed() -> void:
	print("Hi")
	SceneTransition.change_scene_to_file("res://intro_scene.tscn")
