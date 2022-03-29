extends "res://scripts/Global.gd"

onready var girl_select = "macy"

func _on_back_b_pressed():
	Global._change_scene("res://scenes/Title.tscn")

func _process(delta):
	match girl_select:
		"macy":
			$macy/macy_s.set_animation("hover")
			$name.set_text("MACY")
			$description.set_text(tr("MACY_DEC"))
		"gal":
			$macy/macy_s.set_animation("idle")
			$gal/gal_s.set_animation("hover")
			$dan/dan_s.set_animation("idle")
			$chyou/chyou_s.set_animation("idle")
			$name.set_text("GALINA")
			$description.set_text(tr("GAL_DEC"))
		"dan":
			$macy/macy_s.set_animation("idle")
			$gal/gal_s.set_animation("idle")
			$dan/dan_s.set_animation("hover")
			$chyou/chyou_s.set_animation("idle")
			$name.set_text("DANEESHA")
			$description.set_text(tr("DAN_DEC"))
		"chyou":
			$macy/macy_s.set_animation("idle")
			$gal/gal_s.set_animation("idle")
			$dan/dan_s.set_animation("idle")
			$chyou/chyou_s.set_animation("hover")
			$name.set_text("CHYOU")
			$description.set_text(tr("CHYOU_DEC"))

func _on_macy_b_pressed():
	girl_select = "macy"

func _on_gal_b_pressed():
	girl_select = "gal"

func _on_dan_b_pressed():
	girl_select = "dan"

func _on_chyou_b_pressed():
	girl_select = "chyou"

func _on_start_b_pressed():
	match girl_select:
		"macy":
			Global._change_scene("res://scenes/Macy.tscn")
		"gal":
			Global._change_scene("res://scenes/Galina.tscn")
		"dan":
			Global._change_scene("res://scenes/Daneesha.tscn")
		"chyou":
			Global._change_scene("res://scenes/Chyou.tscn")
