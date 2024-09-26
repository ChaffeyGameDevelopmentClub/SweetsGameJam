extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$AnimatedSprite2D.play("Flying")


func _on_body_entered(body: Node2D) -> void:
	if body.get_name() == "player":
		$obssfx.play()
		body.queue_free()
		get_tree().reload_current_scene()
		GameManager.BluePoints = 0
		GameManager.RedPoints = 0
		
