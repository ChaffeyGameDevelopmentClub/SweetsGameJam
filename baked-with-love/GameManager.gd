extends Node

var RedPoints: int = 0
var BluePoints: int = 0
var totalPoints: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	totalPoints = RedPoints - BluePoints
	if totalPoints <=0:
		pass
	if totalPoints >=0:
		pass