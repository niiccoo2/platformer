extends TileMapLayer

# This variable determines the parallax speed. 0.5 means half the camera speed.
#@export var parallax_scale: float = 0.5 
#
#func _process(delta):
	## Make sure the TileMap's position is always synced with the camera's position.
	#var camera = get_viewport().get_camera_2d()
	#if camera:
		## Set the TileMap's global position to a fraction of the camera's position.
		#global_position = camera.global_position * parallax_scale
