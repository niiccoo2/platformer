extends Node

var score: int = 0:
	set(new_value):
		score = new_value
		_update_score_label()

@onready var score_label = $CanvasLayer/Label

func _ready():
	_update_score_label()

func _on_area_2d_coin_collected(value):
	score += value

func _update_score_label():
	# Only try to update the label if the score_label variable is not null.
	# This prevents the error if the function is called before the node is ready.
	if score_label:
		score_label.text = "Score: " + str(score)
