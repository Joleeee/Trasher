extends KinematicBody2D

var speed = 100
var shield = true
var sprite
var health = 2

func _ready():
	sprite = get_child(2)
	if shield == true:
		sprite.texture = Global.shield
	pass

func _process(delta):
	move_and_slide(Vector2(-speed, 0))
	pass
	
func hit(name):
	health -= 1
	print(name)
	var p = Global.particle()
	p.global_position = global_position
	get_parent().add_child(p)
	if health <= 0:
		self.queue_free()
	pass
