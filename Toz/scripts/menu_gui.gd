extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("%Start_btn").pressed.connect(start_game)
	get_node("%Settings_btn").pressed.connect(open_settings)
	get_node("%quit_settings_btn").pressed.connect(close_settings)


func start_game():
	get_tree().change_scene_to_file("res://scenes/level1.tscn")
	GameManager.in_game = true
	
func open_settings():
	$Main_menu.visible = false
	$Settings_menu.visible = true

func close_settings():
	$Settings_menu.visible = false
	$Main_menu.visible = true
	
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
