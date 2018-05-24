extends KinematicBody2D

var motion = Vector2()
var speed = 300
var timer
var canShoot = false

func _ready():
	timer = get_child(2)
	timer.start()
	pass

func _process(delta):
	motion.x = 0
	motion.y = 0
	if Input.is_action_pressed("ui_up"):
		motion.y -= speed
	if Input.is_action_pressed("ui_down"):
		motion.y += speed
	
	if Input.is_action_just_pressed("ui_right") and canShoot:
		canShoot = false
		var s = Global.bullet()
		s.global_position = global_position
		s.linear_velocity = Vector2(1000,0)
		get_parent().add_child(s)
	
	move_and_slide(motion)
	pass


func _on_Timer_timeout():
	canShoot = true
	timer.start()
	pass
