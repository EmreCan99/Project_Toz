extends Area2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# Check if the player collide withd

func _on_body_entered(body):
	if body is Player:
		GameManager.stats.coins += 1
		print(GameManager.stats.coins)
		
		queue_free();
	
