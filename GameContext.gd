extends Node


export var energy : int = 100;
export var levelTotalTime : float = 5 * 60;
var time : float = 0.0; 
var levelProgress : float = 0.0;
var maxScrollingSpeed : int = 600;



func _ready():
	Events.connect("dino_hurt",self, "_handle_dino_hurt");
	pass


func _handle_dino_hurt():
	energy -= 5;


func _process(delta):
	
	time += delta;
	
	if (time < levelTotalTime):	
		levelProgress = time * 1 / levelTotalTime;
	

	pass

