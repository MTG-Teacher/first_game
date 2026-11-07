extends CharacterBody2D

const SPEED := 250.0
const JUMP_VELOCITY := -450.0
const GRAVITY := 1000.0

var start_position := Vector2.ZERO

func _ready():
	start_position = global_position

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("move_left", "move_right")
	velocity.x = direction * SPEED
	move_and_slide()

	if global_position.y > 650:
		reset_player()

func reset_player():
	global_position = start_position
	velocity = Vector2.ZERO
