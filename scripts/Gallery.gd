extends Node2D

onready var scene_pose = "D"
onready var clothes_number = 5

onready var girl_select = "macy"

onready var macy_sprite = $girls/macy_s
onready var gal_sprite = $girls/gal_s
onready var dan_sprite = $girls/dan_s
onready var chyou_sprite = $girls/chyou_s

onready var macy_icon = $icons/macy_s
onready var gal_icon = $icons/gal_s
onready var dan_icon = $icons/dan_s
onready var chyou_icon = $icons/chyou_s

func _process(delta):
	var girl_sprite = scene_pose+str(clothes_number)
	macy_sprite.animation = girl_sprite
	gal_sprite.animation = girl_sprite
	dan_sprite.animation = girl_sprite
	chyou_sprite.animation = girl_sprite
	$UI/Label.text = str(clothes_number)
	_girl_select()

func _girl_select():
	match girl_select:
		"macy":
			macy_sprite.show()
			gal_sprite.hide()
			dan_sprite.hide()
			chyou_sprite.hide()
			macy_icon.animation = "hover"
			gal_icon.animation = "idle"
			dan_icon.animation = "idle"
			chyou_icon.animation = "idle"
			return
		"gal":
			macy_sprite.hide()
			gal_sprite.show()
			dan_sprite.hide()
			chyou_sprite.hide()
			macy_icon.animation = "idle"
			gal_icon.animation = "hover"
			dan_icon.animation = "idle"
			chyou_icon.animation = "idle"
			return
		"dan":
			macy_sprite.hide()
			gal_sprite.hide()
			dan_sprite.show()
			chyou_sprite.hide()
			macy_icon.animation = "idle"
			gal_icon.animation = "idle"
			dan_icon.animation = "hover"
			chyou_icon.animation = "idle"
			return
		"chyou":
			macy_sprite.hide()
			gal_sprite.hide()
			dan_sprite.hide()
			chyou_sprite.show()
			macy_icon.animation = "idle"
			gal_icon.animation = "idle"
			dan_icon.animation = "idle"
			chyou_icon.animation = "hover"
			return

func _on_arrowl_b_pressed():
	if clothes_number > 0:
		clothes_number -= 1
		return

func _on_arrowr_b_pressed():
	if clothes_number < 5:
		clothes_number += 1
		return

func _on_default_b_pressed():
	scene_pose = "D"

func _on_lose_b_pressed():
	scene_pose = "L"

func _on_win_b_pressed():
	scene_pose = "W"

func _on_strip_b_pressed():
	scene_pose = "S"

func _on_macy_b_pressed():
	girl_select = "macy"

func _on_gal_b_pressed():
	girl_select = "gal"

func _on_dan_b_pressed():
	girl_select = "dan"

func _on_chyou_b_pressed():
	girl_select = "chyou"

func _on_back_b_pressed():
	Global._change_scene("res://scenes/Title.tscn")
