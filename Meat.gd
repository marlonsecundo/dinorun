extends Area2D



var activated = false;
export var speed : int = -10;
export var maxBonusSpeed : int = 50;

func _ready():
	pass


func _process(delta):
	
	if (activated):
		position.x += speed - (maxBonusSpeed * GameContext.levelProgress);
		
		
		pass
	

func _on_Meat_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.is_in_group("dino"):
		get_parent().remove_child(self);
		Events.emit_signal("food_colleted", Events.FOOD_TYPE_MEAT);
		
		
	pass # Replace with function body.
