extends Node

@onready var current_scene = get_tree().get_current_scene()

@onready var GUI = current_scene.get_node("GUI")
@onready var inventoryGUI = GUI.get_node("inventoryGui")
@onready var total_coins = 0;

signal inventory_changed

# Pause the game upon the toggle inventory
func _on_inventory_gui_opened():
	get_tree().paused = true
func _on_inventory_gui_closed():
	get_tree().paused = false
	
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func updateInventoryGUI():
	inventory_changed.emit()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
