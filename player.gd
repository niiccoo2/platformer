extends CharacterBody2D

const SPEED = 100
const JUMP_VELOCITY = -400.0

@onready var anim = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Gravity
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Jump
	if Input.is_action_just_pressed("up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Horizontal movement
	var direction = 0
	if Input.is_action_pressed("right"):
		direction = 1
	elif Input.is_action_pressed("left"):
		direction = -1

	velocity.x = direction * SPEED

	# Animation logic
	if not is_on_floor():
		anim.play("jump")
	elif direction != 0:
		anim.flip_h = direction < 0
		anim.play("walk")
	else:
		anim.play("idle")

	move_and_slide()
