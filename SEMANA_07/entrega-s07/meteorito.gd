extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const velocidade_horizontal = 2
const g = 5

var move_queda = Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	move_queda.y +=g*delta
	move_queda.x = velocidade_horizontal
	move_queda.normalized()
	move_and_collide(move_queda)

