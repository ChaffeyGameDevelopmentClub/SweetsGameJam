extends CharacterBody2D

@export var speed: float

@export var jump_height: float
@export var jump_to_top: float
@export var jump_to_bottom: float

@onready var jump_velocity: float = (2.0 * jump_height)/jump_to_top * -1
@onready var jump_gravity: float = (-2.0*jump_height) / pow(jump_to_top,2) * -1
@onready var fall_gravity:  = (-2.0 * jump_height) / pow(jump_to_bottom, 2) * -1

@onready var sprite = $PlayerSprite
@onready var coyoteJump = true
@onready var jumpBuffer = false
@onready var isCrouch = false

func getgravity()-> Vector2:
	if velocity.y < 0.0:
		return Vector2(0, jump_gravity)
	else:
		return Vector2(0,fall_gravity)

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		coyoteTime()
		velocity += getgravity() * delta
		
		
		
	# Handle jump.
	if Input.is_action_just_pressed("Jump"):
		jumpBuffer = true
		rememberJumpBuffer()
		if coyoteJump == true:
			velocity.y = jump_velocity
			sprite.play("Jump")
	if Input.is_action_just_released("Jump") and not is_on_floor():
		velocity += (Vector2(0,10000)+getgravity()) * delta
	
	
	var direction := Input.get_axis("Left", "Right")
	if direction == -1:
		velocity.x = speed-450 *delta *60
		if is_on_floor() and !isCrouch:
			sprite.play("Slow_down")
	elif direction == 1:
		velocity.x = speed + 450 *delta *60
		if is_on_floor() and !isCrouch:
			sprite.play("Speed_up")
	else:
		velocity.x = speed *delta*60
	
	
	if is_on_floor():
		coyoteJump = true
		if jumpBuffer == true:
			velocity.y = jump_velocity
			sprite.play("Jump")
		if not Input.is_anything_pressed():
			sprite.play("Idle")
	
	if Input.is_action_just_pressed("Crouch"):
		sprite.play("Crouch")
		isCrouch = true
		$playerCollision.shape.size = Vector2(15,15)
		$playerCollision.position.y = 20
	if Input.is_action_just_released("Crouch"):
		sprite.stop()
		isCrouch = false
		$playerCollision.shape.size = Vector2(20,35)
		$playerCollision.position.y = -30
		
	move_and_slide()

func coyoteTime():
	await get_tree().create_timer(.1).timeout
	coyoteJump = false

func rememberJumpBuffer():
	await get_tree().create_timer(.1).timeout
	jumpBuffer = false
