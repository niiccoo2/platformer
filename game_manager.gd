extends Node

var score = 0

func _on_coin_coin_collected(value):
	score += value
	print("Score: ", score) # Example: Update a UI label here
