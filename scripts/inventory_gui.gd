extends Control

@onready var inventory: Inventory = preload("res://inventory/player_inventory.tres")
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()

signal opened
signal closed

var is_open: bool = false

func _ready():
	# Connect the signal to GameManager to Pause the game
	self.opened.connect(GameManager._on_inventory_gui_opened)
	self.closed.connect(GameManager._on_inventory_gui_closed)
	
	GameManager.inventory_changed.connect(update)
	
	# Call the update for filling the slots first time
	update()
	

	
func update():
	for i in min(inventory.items.size(), slots.size()):
		slots[i].update(inventory.items[i])



func open():
	is_open = true
	visible = true
	opened.emit()

	
func close():
	is_open = false
	visible = false
	closed.emit()
