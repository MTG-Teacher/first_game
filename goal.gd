extends Area2D

func _on_body_entered(body):
	if body.name == "Player":
		print("Level geschafft!")
		get_tree().paused = true
