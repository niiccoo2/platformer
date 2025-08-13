extends Area2D

# Declare the signal here to make it visible in the Inspector
signal coin_collected(value)

func _on_body_entered(body):
	# Check if the colliding body is the player
	if body.is_in_group("player"):
		# Emit the signal with a value of 1
		coin_collected.emit(1)

		# Queue the coin for removal from the scene
		queue_free()
