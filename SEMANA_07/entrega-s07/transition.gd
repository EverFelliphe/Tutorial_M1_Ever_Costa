extends CanvasLayer






func _on_backward_timeout():
	$ColorRect/AnimationPlayer.play_backwards("transition")


func _on_transio_timeout():
	$ColorRect/AnimationPlayer.play("transition")
	$backward.start()


func _on_transition_2_timeout():
	$ColorRect/AnimationPlayer.play_backwards("transition")


func _on_ready_go_timeout():
	$ColorRect/AnimationPlayer.play_backwards("transition")


func _on_transition2_timeout():
	$ColorRect/AnimationPlayer.play("transition")
