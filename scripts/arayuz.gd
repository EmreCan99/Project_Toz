extends CanvasLayer

# get the score counter
@onready var coins_lbl = $MarginContainer/GridContainer/coins_lbl2;
@onready var inventory = $inventoryGui


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
		inventory.close()

func update_coin_lbl(score):
	coins_lbl.text = str(score)

# Open / Close inventory

func _input(event):
	if event.is_action_pressed("toggle_inventory"):
		if (inventory.is_open == true):
			inventory.close()
		else: 
			inventory.open()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
