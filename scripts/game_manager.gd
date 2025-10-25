extends Node

@onready var current_scene = get_tree().get_current_scene()
@onready var stats = PlayerStats.new()

# Check if the game started already
@onready var in_game = false

func _ready() -> void:
	
	# The Player Stats
	stats.title = "The Hero"
	stats.hp = 100
	stats.coins = 0
	
	if in_game:
		var GUI = current_scene.get_node("GUI")
		var inventoryGUI = GUI.get_node("inventoryGui")

signal inventory_changed


# Pause the game upon the toggle inventory
func _on_inventory_gui_opened():
	get_tree().paused = true
func _on_inventory_gui_closed():
	get_tree().paused = false
	
	

# Called when the node enters the scene tree for the first time.


func updateInventoryGUI():
	inventory_changed.emit()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
