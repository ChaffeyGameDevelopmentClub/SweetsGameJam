extends Area2D

class_name Collectibles
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_body_entered(body, type):
	if type == "Blue":
		pass
	
	if body.get_name() == "player":
		queue_free()
