extends Label


func _process(delta: float) -> void:
	text = "blue: " + str(GameManager.BluePoints)
