extends ParallaxBackground



export (float) var base_scrolling_speed = 200;

var scrolling_speed = base_scrolling_speed;

func _process(delta):
	scroll_base_offset.x -= scrolling_speed * delta;
	_handle_level_progress(delta);


	
func _handle_level_progress(delta):
	scrolling_speed = base_scrolling_speed + (GameContext.levelProgress * GameContext.maxScrollingSpeed);
	pass
