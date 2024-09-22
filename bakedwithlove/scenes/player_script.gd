extends CharacterBody2D

# exports
@export var char_speed = 20
@export var jump_limit = 1
@export var jump_strengh = 1500
@export var gravity = 4500
@export var speed_upper = 35
@export var speed_lower = 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

#Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		playerinput()
		#var horizontal_direction = char_speed
		#velocity.x = horizontal_direction * char_speed
		#velocity.y += gravity * delta
		move_and_slide()

func playerinput():
	if Input.get_action_strength("move_right"):
		if char_speed <= speed_upper:
			char_speed = speed_upper
	if Input.get_action_strength("move_left"):
		if char_speed >= speed_lower:
			char_speed = speed_lower
	if Input.get_action_strength("jump"):
		velocity.y = jump_strengh
