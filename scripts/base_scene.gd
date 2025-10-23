class_name BaseScene extends Node2D

@onready var player: Player
@onready var entrance_marker = $EntranceMarkers/Marker2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if SceneManager.player:
		add_child(SceneManager.player)
		player = $player
		set_player_position()
	
	if SceneManager.GUI:
		add_child(SceneManager.GUI)
		
		
func set_player_position():
	player.set_global_position(entrance_marker.get_global_position())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
