extends Node

onready var bullet = preload("res://Bullet.tscn")
onready var blob = preload("res://Blob.tscn")

func bullet():
	var s = bullet.instance()
	return s
	pass

func blob():
	var b = blob.instance()
	return b
	pass