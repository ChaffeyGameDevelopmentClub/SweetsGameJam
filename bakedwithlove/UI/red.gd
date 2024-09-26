extends Label


func _process(delta: float) -> void:
	text = "red: " + str(GameManager.RedPoints)
