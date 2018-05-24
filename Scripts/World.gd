extends Node

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	pass


func _spawn(object):
	
	pass


func _on_Timer_timeout():
	spawnBlob()
	pass

func spawnBlob():
	var e = Global.blob()
	e.global_position = Vector2(get_viewport().size.x, rand_range(0, get_viewport().size.y))
	get_parent().add_child(e)
	pass