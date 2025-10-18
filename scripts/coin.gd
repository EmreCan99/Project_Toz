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
		GameManager.total_coins += 1;
		print(GameManager.total_coins);
		get_owner().get_node("Arayuz").update_coin_lbl(GameManager.total_coins);
		
		queue_free();
	
