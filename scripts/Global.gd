extends Node

onready var macy_win = false
onready var gal_win = false
onready var dan_win = false
onready var chyou_win = false

onready var macy_flawless = false
onready var gal_flawless = false
onready var dan_flawless = false
onready var chyou_flawless = false

onready var secret_encounter = false

onready var gauntlet_win = false

onready var player_body_type = "M"

func _change_scene(room):
	get_tree().change_scene(room)
	return

