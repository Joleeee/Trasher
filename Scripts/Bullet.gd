extends RigidBody2D

func _ready():
	pass

func _process(delta):
#	if global_position.x > get_viewport().size.x + 20:
#		slef.queue_free()
	pass

func _on_Bullet_body_entered(body):
	print(body.get_name())
	if body.has_method("hit"):
		body.call("hit", body.name)
	self.queue_free()
	pass
