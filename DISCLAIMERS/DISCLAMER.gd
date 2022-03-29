extends Node2D

onready var timer1 = 180
onready var timer2 = 360
onready var disclaimer = 0


func _process(delta):
	_timer()
	_disclaimer()

func _timer():
	timer1 -= 1
	timer2 -= 1
	if timer1 <= 0:
		disclaimer = 1
	if timer2 <= 0:
		Global._change_scene("res://scenes/Title.tscn")
		return

func _disclaimer():
	if disclaimer == 1:
		$Label.text = "X_DISCLAIMER"
		return
