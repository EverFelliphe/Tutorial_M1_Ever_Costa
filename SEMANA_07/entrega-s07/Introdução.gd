extends Node2D

var dialog = Global.dialogos[Global.current_dialog]
var texto = ""
var nome = ""
var n = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer2/ColorRect/VBoxContainer/Label/RichTextLabel.text =""
	$transition.hide()
	$dialogo.start()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_explosion_timeout():
	 $CanvasLayer/AnimationPlayer.play("explosion")
	 $transition_2.start()
	 $dialogo_2.start()
func _on_dialogo_timeout():
	$CanvasLayer.hide()
	$CanvasLayer2.show()
	$CanvasLayer2/ColorRect.show()
	$CanvasLayer2/ColorRect/VBoxContainer/Label/RichTextLabel.text = dialog[n]


func _on_TextureButton_pressed():
	n+=1
	if n==1:
		$CanvasLayer2/ColorRect/VBoxContainer/Label.text = dialog.name
	if n==3:
		$transition.show()
		$"transição".start()
		$impacto.start()
		
		n+=1
	elif n == 6:
		$transition.show()
		$"transição".start()
		$changescene.start()
	else:
		
		$CanvasLayer2/ColorRect/VBoxContainer/Label/RichTextLabel.text = dialog[n]
		

func _on_impacto_timeout():
	$CanvasLayer.show()
	$CanvasLayer2.hide()
	$CanvasLayer/AnimationPlayer.play("impact")
	$explosion.start()


func _on_transio_timeout():
	pass # Replace with function body.


func _on_dialogo_2_timeout():
	$transition.hide()
	$CanvasLayer2.show()
	$CanvasLayer.hide()
	
	$CanvasLayer2/ColorRect.show()
	$CanvasLayer2/ColorRect/VBoxContainer/Label/RichTextLabel.text = dialog[n]


func _on_changescene_timeout():
	get_tree().change_scene("res://fase 1.tscn")
