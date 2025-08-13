extends Area2D

func _on_body_entered(body):
	# Check if the colliding body is the player
	# You can do this by checking its group or a specific property
	if body.is_in_group("player"):
		# Emit a signal to tell the rest of the game that a coin was collected
		var coin_collected_signal = "coin_collected"
		if not has_signal(coin_collected_signal):
			add_user_signal(coin_collected_signal, ["value"])
		emit_signal(coin_collected_signal, 1) # '1' is the coin's value

		# Queue the coin for removal from the scene
		queue_free()
