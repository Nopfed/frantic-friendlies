extends KinematicBody2D

var v = Vector2(0, 0)

const SPEED = 100


func _ready():
	v.x = -SPEED

func _physics_process(delta):
	
	if position.x < 160:
		v.x = SPEED
	
	if position.x > 864:
		v.x = -SPEED
	
	move_and_slide(v, Vector2.UP)
