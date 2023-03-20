extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$"apertar_botão".start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_apertar_boto_timeout():
	$CanvasLayer/AnimationPlayer.play("final")
	$enviar_sinal.start()


func _on_enviar_sinal_timeout():
	$CanvasLayer/AnimationPlayer.play("sinal")
	$CanvasLayer/AnimationPlayer2.play("sinal-2")
	$CanvasLayer/AnimationPlayer3.play("sinal-3")
	$"trocar_de_visão".start()

func _on_recebendo_sinal_timeout():
	$CanvasLayer2/recebendo_sinal.play("recebendo_sinal")
	$"créditos".start()


func _on_trocar_de_viso_timeout():
	$CanvasLayer.hide()
	$recebendo_sinal.start()


func _on_crditos_timeout():
	get_tree().change_scene("res://cena_final.tscn")
