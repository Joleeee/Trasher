extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var speed = 100
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	move_and_slide(Vector2(-speed, 0))
	pass

func hit():
	self.queue_free()
	pass
