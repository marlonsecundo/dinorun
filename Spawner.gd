extends Node




export var loopTime = 10;

var time = 0;


var Spikes;
var SpawnPosition;

func _ready():
	
	Spikes = get_node("Spikes");
	SpawnPosition = get_node("SpawnPosition");
		
	pass
	
func _process(delta):
	
	time += delta;
	if (time > loopTime):
		time = 0;
		print("FOIII")
		_spawnSpikes();
		
		
	
	


func _spawnSpikes():
	var newSpike = Spikes.duplicate();
	newSpike.position = SpawnPosition.position;
	newSpike.activated = true;
	add_child(newSpike);
	
	
	
