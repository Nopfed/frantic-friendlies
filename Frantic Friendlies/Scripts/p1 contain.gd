extends Container

#initialize
func _ready():
	$"p1 score".text = "Score: " + String(global.p1score)

func _process(delta):
	$"p1 score".text = "Score: " + String(global.p1score)
