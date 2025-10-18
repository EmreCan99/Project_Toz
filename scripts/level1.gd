extends BaseScene





# Called when the node enters the scene tree for the first time.
func _ready():
	super()


# Called every frame. 'delta' is the elapsed time since the previous frame.




func _input(event):
	if event.is_action_pressed("change_text"):
		$text.text = "Basıldı!"
	else: pass
	
	
	
	
	
