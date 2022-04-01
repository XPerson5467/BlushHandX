extends Node2D

onready var female_button = $BodyType/femalebutton_s
onready var male_button = $BodyType/malebutton_s

func _process(delta):
	_highlight()
	_gallery_unlock()

func _highlight():
	match Global.player_body_type:
		"M":
			male_button.modulate = Color(1, 1, 1)
			female_button.modulate = Color(0.54, 0.46, 0.46)
			return
		"F":
			male_button.modulate = Color(0.54, 0.46, 0.46)
			female_button.modulate = Color(1, 1, 1)
			return

func _gallery_unlock():
	var gallery_unlock = [Global.macy_win, Global.gal_win, Global.dan_win, Global.chyou_win]
	if gallery_unlock == [true, true, true, true]:
		$Gallery.modulate = Color(0,0,0)
		$Gallery/gallery_b.show()
		return

func _on_play_b_pressed():
	Global._change_scene("res://scenes/GirlSelect.tscn")

func _on_gallery_b_pressed():
	Global._change_scene("res://scenes/Gallery.tscn")

func _on_male_b_pressed():
	Global.player_body_type = "M"

func _on_female_b_pressed():
	Global.player_body_type = "F"

func _on_gauntlet_b_pressed():
	Global._change_scene("res://scenes/Gauntlet_Menu.tscn")
