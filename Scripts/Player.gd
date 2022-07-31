extends KinematicBody2D

var movimento = Vector2.ZERO
var rapidez = 120

func _physics_process(delta):
		
	movimento.y += 10
	
	if is_on_floor():
		
		print("Chao")
		
		if Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_left"):
			$AnimatedSprite.play("Run")
		
		if movimento.x == 0:
			$AnimatedSprite.play("Idle")
		
		if Input.is_action_just_pressed("ui_up"):
			movimento.y = -230
			
	else:
		print("Ar")
		$AnimatedSprite.play("Jump")
			
	if Input.is_action_pressed("ui_right"):
		movimento.x = rapidez
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		movimento.x = -rapidez
		$AnimatedSprite.flip_h = true
	else:
		movimento.x = 0

	movimento = move_and_slide(movimento, Vector2.UP)
