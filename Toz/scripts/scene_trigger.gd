class_name SceneTrigger extends Area2D

@export var scene_connected_to: String




func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		print("Player Entered: " + scene_connected_to)
		SceneManager.change_scene(get_owner(), scene_connected_to)
		
