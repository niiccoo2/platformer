extends Node

var score: int = 0:
	# A setter function to automatically update the label when the score changes.
	set(new_value):
		score = new_value
		# Check if the label is ready before trying to update it.
		if score_label:
			_update_score_label()

@onready var score_label = $CanvasLayer/Label

func _ready():
	_update_score_label()

func _on_area_2d_coin_collected(value):
	score += value

func _update_score_label():
	# Set the Label's text to show the score.
	score_label.text = "Score: " + str(score)
