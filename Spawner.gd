extends Node




export var spikeLoopTime = 3;
export var meatLoopTime = 13;

var spikeTime = 0;
var meatTime = 0;

var Spikes;
var SpawnPosition: Node;
var Meat : Node;

func _ready():
	
	Spikes = get_node("Spikes");
	Meat = get_node("Meat");
	SpawnPosition = get_node("SpawnPosition");
		
	pass
	
func _process(delta):
	
	spikeTime += delta;
	if (spikeTime > spikeLoopTime):
		spikeTime = 0;
		_spawnSpikes();
	
	
	meatTime += delta;
	if (meatTime > meatLoopTime):
		meatTime = 0;
		_spawnMeat();
		
		


func _spawnSpikes():
	var newSpike = Spikes.duplicate();
	newSpike.position = SpawnPosition.position;
	newSpike.activated = true;
	add_child(newSpike);
	
func _spawnMeat():
	var newMeat = Meat.duplicate();
	newMeat.position = SpawnPosition.position;
	newMeat.position.x += 10;
	newMeat.activated = true;
	add_child(newMeat);
	
	
	
	
