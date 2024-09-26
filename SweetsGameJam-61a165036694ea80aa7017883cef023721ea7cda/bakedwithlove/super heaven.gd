extends Area2D

var type: String = "Red"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	if body.get_name() == "player":
		if GameManager.BluePoints >> GameManager.RedPoints:
			SceneTransition.heaven_ascension("res://ending_a_1.tscn")
		if GameManager.RedPoints >> GameManager.BluePoints:
			SceneTransition.heaven_ascension("res://ending_b_1.tscn")
		pass
