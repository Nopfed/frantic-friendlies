extends KinematicBody2D

onready var TweenNode = get_node("Tween")

func _process(delta):
	var mouse_pos = get_global_mouse_position()
	
	if Input.is_action_just_pressed("action"):
		TweenNode.interpolate_property(self, "position", get_position(), mouse_pos, 1.0, Tween.TRANS_BACK, Tween.EASE_OUT)
		TweenNode.start()
		
