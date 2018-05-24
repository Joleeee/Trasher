extends Node

onready var bullet = preload("res://Scenes/Bullet.tscn")
onready var blob = preload("res://Scenes/Blob.tscn")
onready var particle = preload("res://Scenes/Particle.tscn")
onready var shield = preload("res://icon.png")
onready var scene = preload("res://Scenes/World.tscn")

func mainScene():
	var s = scene.instance()
	return s
	pass

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