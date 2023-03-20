extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const velocity = 300
const gravity = 10
func velocity_y(g,v,t):
	var velocit
	for i in t:
		velocit = v + g*i
		return velocit
	
# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	var move = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		move.x = -1
	if Input.is_action_pressed("ui_right"):
		move.x = 1
	if Input.is_action_just_pressed("ui_up"):
		move.y = (velocity_y(velocity,gravity, 30)
	
	move_and_slide(move*velocity)
	match Global.current_pers:
		Global.personagem.Idle:
			$"../AnimatedSprite".play("default")
		Global.personagem.Walking: 
			$"../AnimatedSprite".play("New Anim")
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
