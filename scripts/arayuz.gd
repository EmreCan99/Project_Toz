extends CanvasLayer

# get the score counter
@onready var coins_lbl = $MarginContainer/GridContainer/coins_lbl2;

func update_coin_lbl(score):
	coins_lbl.text = str(score)









# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
