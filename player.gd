extends KinematicBody2D


var gravity = 30;
var velocity = Vector2();
var speed = Vector2(0, 750);
var slowdown = Vector2(20, 0);
var acceleration = Vector2(0,0)
var max_acceleration = Vector2(450,0);
var speed_acce = 2;


func _ready():
	
	pass
	
	

func _physics_process(delta):
	velocity.y += gravity;
	
	velocity = move_and_slide(velocity, Vector2.UP);
	
	

	
	_handle_input();
	_handle_collision();
	


func _handle_input():
		
	if Input.is_action_just_pressed("ui_up") && is_on_floor():
		velocity.y = -speed.y;
		


func _handle_collision():
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		if collision.collider.is_in_group("danger"):
			Events.emit_signal("dino_hurt")
		
