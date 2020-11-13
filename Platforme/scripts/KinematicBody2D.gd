extends KinematicBody2D

const Up = Vector2(0, -1)
const Gravity = 20
export var Speed = 200
export var jump_height = -500
var motion = Vector2()

func _physics_process(delta):
	
	motion.y += Gravity
	
	if Input.is_action_pressed("ui_right"):
		motion.x = Speed
		$Sprite.flip_h = false
		$Sprite.play("Run")
	elif Input.is_action_pressed("ui_left"):
		motion.x = -Speed
		$Sprite.flip_h = true
		$Sprite.play("Run")
	else:
		motion.x = 0
		$Sprite.play("Idle")
	
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = jump_height
	else:
		$Sprite.play("Jump")
	
	motion = move_and_slide(motion, Up)
