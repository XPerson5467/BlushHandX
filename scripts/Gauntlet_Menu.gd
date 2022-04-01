extends Node2D

func _ready():
	_gallery_unlocked()

func _gallery_unlocked():
	if Global.gauntlet_win == true:
		$gallery_s.modulate = Color(1,1,1)
		$gallery_b.show()
		return

func _on_back_b_pressed():
	Global._change_scene("res://scenes/Title.tscn")

func _on_play_b_pressed():
	Global._change_scene("res://scenes/Gauntlet.tscn")

func _on_gallery_b_pressed():
	Global._change_scene("res://scenes/Gauntlet_Gallery.tscn")
