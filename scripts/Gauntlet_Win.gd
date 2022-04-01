extends Node2D

func _ready():
	_background()

func _background():
	if Global.player_body_type == "M":
		$Background.frame = 1
		return
	$Background.frame = 0
	return
	
func _on_back_b_pressed():
	Global._change_scene("res://scenes/Title.tscn")
