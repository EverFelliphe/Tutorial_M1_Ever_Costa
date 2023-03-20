extends Node2D
var meteorito= preload("res://meteorito.tscn")

func _ready():
	$ready_go.start()
func _process(delta):
	if $Node2D.position.x >$Camera2D.position.x:
		$Camera2D.current= false
		$Node2D/Camera2D.current = true
	else:
		$Camera2D.current = true
	$teste.start()

func _on_Area2D2_body_entered(body):
	$transition2.start()
	$sair.start()


func _on_sair_timeout():
	get_tree().change_scene("res://Final.tscn")




func _on_teste_timeout():
	var inimigo = meteorito.instance()
	$".".add_child(inimigo)
	inimigo.position.x = rand_range($Node2D.position.x-100, ($Node2D.position.x +600)) 
	inimigo.position.y = $Node2D.position.y - 300
