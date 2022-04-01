extends Node2D

onready var scene_pose = "D"
onready var opponent_number = 11

onready var gauntlet_sprite = $gauntlet_s

func _process(delta):
	var g_sprite = scene_pose+str(opponent_number)
	gauntlet_sprite.animation = g_sprite
	$UI/Label.text = str(opponent_number)
	_queen()

func _queen():
	match opponent_number:
		2:
			$UI/default_s.modulate = Color(1, 1, 1)
			$UI/default_b.show()
			$UI/win_s.modulate = Color(0.25, 0.25, 0.25)
			$UI/win_b.hide()
			return
		1:
			$UI/default_s.modulate = Color(0.25, 0.25, 0.25)
			$UI/default_b.hide()
			$UI/win_s.modulate = Color(0.25, 0.25, 0.25)
			$UI/win_b.hide()
			return
		0:
			$UI/default_s.modulate = Color(0.25, 0.25, 0.25)
			$UI/default_b.hide()
			$UI/win_s.modulate = Color(1, 1, 1)
			$UI/win_b.show()
			return
		_:
			$UI/default_s.modulate = Color(1, 1, 1)
			$UI/default_b.show()
			$UI/win_s.modulate = Color(1, 1, 1)
			$UI/win_b.show()

func _on_arrowl_b_pressed():
	if opponent_number > 0:
		opponent_number -= 1
		return

func _on_arrowr_b_pressed():
	if opponent_number < 11:
		opponent_number += 1
		return

func _on_default_b_pressed():
	scene_pose = "D"

func _on_win_b_pressed():
	scene_pose = "W"

func _on_strip_b_pressed():
	scene_pose = "S"

func _on_back_b_pressed():
	Global._change_scene("res://scenes/Gauntlet_Menu.tscn")
