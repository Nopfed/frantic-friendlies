extends KinematicBody2D

onready var TweenNode = get_node("Tween")
onready var start_pos = position

func _process(_delta):
	var mouse_pos = get_global_mouse_position()
	
	if Input.is_action_just_pressed("p1 action"):
		TweenNode.interpolate_property(self, "position", get_position(), mouse_pos, 1.0, Tween.TRANS_BACK, Tween.EASE_OUT)
		TweenNode.start()
		TweenNode.reset(self)
		#position = start_pos
		
