extends Node

onready var macy_win = false
onready var gal_win = false
onready var dan_win = false
onready var chyou_win = false

onready var player_body_type = "M"

func _change_scene(room):
	get_tree().change_scene(room)
	return

