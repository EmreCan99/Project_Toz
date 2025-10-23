extends Node

var player: Player
var GUI: CanvasLayer

const scene_root = "res://scenes/"

func change_scene(from, change_to):
	var full_path = scene_root + change_to + ".tscn"
	
	player = from.get_node("player")
	player.get_parent().remove_child(player)
	
	GUI = from.get_node("GUI")
	GUI.get_parent().remove_child(GUI)
	
	from.get_tree().call_deferred("change_scene_to_file", full_path)
	
	


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
