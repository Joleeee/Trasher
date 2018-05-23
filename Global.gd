extends Node

onready var bullet = preload("res://Bullet.tscn")
onready var blob = preload("res://Blob.tscn")
onready var particle = preload("res://Particle.tscn")

func bullet():
	var s = bullet.instance()
	return s
	pass

func particle():
	var p = particle.instance()
	return p
	pass

func blob():
	var b = blob.instance()
	return b
	pass