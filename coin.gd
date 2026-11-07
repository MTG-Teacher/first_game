extends Area2D

func _on_body_entered(body):
	if body.name == "Player":
		print("Münze eingesammelt!")
		queue_free()
