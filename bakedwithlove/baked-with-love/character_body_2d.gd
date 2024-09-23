extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -700.0



func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	
	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	

	var direction := Input.get_axis("Left", "Right")
	if direction == -1:
		velocity.x = SPEED-150 *delta *60
	elif direction == 1:
		velocity.x = SPEED + 150 *delta *60
	else:
		velocity.x = SPEED 
	
		
	move_and_slide()
	
