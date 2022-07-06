extends Area2D



var activated = false;
export var speed = -10;

func _ready():
	pass


func _process(delta):
	
	if (activated):
		position.x += speed;
		
		
		pass
	
