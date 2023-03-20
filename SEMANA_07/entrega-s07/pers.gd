extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
const velocity = 200
const gravity = 10000
var n =0
const jumpforce = 4000

 
# Called when the node enters the scene tree for the first time.
func _physics_process(delta):

	var move = Vector2.ZERO
	move.y += gravity*delta
#	if Input.is_action_just_pressed("ui_left") and Input.is_action_pressed("ui_up"):
#		move.x =-1
#		move.y = -1
#	if Input.is_action_just_pressed("ui_right") and Input.is_action_pressed("ui_up"):
#		move.x =+1
#		move.y = -1
	if Input.is_action_pressed("ui_left"):
			move.x = -velocity
			if Global.current_pers!= Global.personagem.jumping: 
				Global.current_pers =Global.personagem.Walking
	if Input.is_action_pressed("ui_right"):
			move.x = velocity
			if Global.current_pers!= Global.personagem.jumping: 
				Global.current_pers =Global.personagem.Walking
			
	if (Input.is_action_just_pressed("ui_up") and n<2):
			move.y = -jumpforce
			n+=1
			Global.current_pers=Global.personagem.jumping
	if is_on_floor():
		Global.current_pers=Global.personagem.Idle
		n=0
	move_and_slide(move,Vector2.UP,true)
	match Global.current_pers:
		Global.personagem.Idle:
			$AnimatedSprite.play("default")
		Global.personagem.Walking: 
			$AnimatedSprite.play("New Anim")
		



