extends Node2D


func _on_sair_pressed():
	get_tree().quit()


func _on_jogar_novamente_pressed():
	Global.current_dialog= Global.dialogs.introduction
	get_tree().change_scene("res://Introdução.tscn")
