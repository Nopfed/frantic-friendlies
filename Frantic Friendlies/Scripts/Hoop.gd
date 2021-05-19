extends Area2D

var v = Vector2(0, 0)

const SPEED = 100


func _ready():
	v.x = -SPEED

func _physics_process(delta):
	
	if position.x < 160:
		v.x = SPEED
	
	if position.x > 864:
		v.x = -SPEED
	
	position += v * delta
	

func _on_Hoop_body_entered(body):
	
	if body.is_in_group("p1"):
		global.p1score += 1
	elif body.is_in_group("p2"):
		global.p2score += 1
	elif body.is_in_group("p3"):
		global.p3score += 1
	else:
		global.p4score += 1
