extends Label


var blue = 0

# Called when the node enters the scene tree for the first time.
func _process(delta: float) -> void:
	text = str(GameManager.BluePoints)
