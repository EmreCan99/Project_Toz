class_name Player extends CharacterBody2D

@onready var animation = $AnimatedSprite2D
@export_enum("yürüme", "yürüme_2") var anim_yurume: String

@export var inventory: Inventory

const SPEED = 100.0
var input_direction


func move_char():
	input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = input_direction * SPEED
	
	if velocity.length() > 0:
		animation.play(anim_yurume)
	else: animation.play("bekleme")

	
func _physics_process(_delta):
	move_char()
	move_and_slide()
	

# Pickup collectably

	
