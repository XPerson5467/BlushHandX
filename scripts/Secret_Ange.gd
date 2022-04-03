extends Node2D

onready var ange_scene = "intro"
onready var ange_sprite = $ange_s
onready var ange_hover = $ange_s/hover
onready var ange_dialogue = $dialogue/box_t
onready var ange_shot = 1
onready var can_advance = true
onready var ange_state = [ange_scene, ange_shot]
onready var key_timer = 360

func _process(delta):
	ange_state = [ange_scene, ange_shot]
	_ange_state()
	_key_handler()
	if can_advance == true:
		$dialogue/next/indecator.play("blink")
		return
	$dialogue/next/indecator.play("invisible")

func _key_handler():
	if key_timer <= 0:
		$choices/key_s/fall.play("falling")
		key_timer = 360
		return
	if can_advance == false:
		key_timer -= 1
		return
	$choices/key_s/fall.play("inactive")
	key_timer = 360
	return

func _ange_state():
	match ange_state:
		["intro", 1]:
			ange_sprite.animation = "default"
			ange_dialogue.text = "ANGE_INTRO1"
		["intro", 0]:
			ange_dialogue.text = "ANGE_INTRO2"
		["advice", 6]:
			ange_dialogue.text = "ANGE_ADVICE1"
		["advice", 5]:
			ange_dialogue.text = "ANGE_ADVICE2"
		["advice", 4]:
			ange_dialogue.text = "ANGE_ADVICE3"
		["advice", 3]:
			ange_dialogue.text = "ANGE_ADVICE4"
		["advice", 2]:
			ange_dialogue.text = "ANGE_ADVICE5"
		["advice", 1]:
			ange_dialogue.text = "ANGE_ADVICE6"
		["advice", 0]:
			ange_dialogue.text = "ANGE_ADVICE7"
		["compliment", 6]:
			ange_dialogue.text = "ANGE_COMPLIMENT1"
		["compliment", 5]:
			ange_dialogue.text = "ANGE_COMPLIMENT2"
		["compliment", 4]:
			ange_dialogue.text = "ANGE_COMPLIMENT3"
		["compliment", 3]:
			ange_dialogue.text = "ANGE_COMPLIMENT4"
		["compliment", 2]:
			ange_dialogue.text = "ANGE_COMPLIMENT5"
		["compliment", 1]:
			ange_dialogue.text = "ANGE_COMPLIMENT6"
		["compliment", 0]:
			ange_dialogue.text = "ANGE_COMPLIMENT7"
		["game", 5]:
			ange_dialogue.text = "ANGE_GAME1"
		["game", 4]:
			ange_dialogue.text = "ANGE_GAME2"
		["game", 3]:
			ange_dialogue.text = "ANGE_GAME3"
		["game", 2]:
			ange_dialogue.text = "ANGE_GAME4"
		["game", 1]:
			ange_dialogue.text = "ANGE_GAME5"
		["game", 0]:
			ange_dialogue.text = "ANGE_GAME6"
		["strip", 1]:
			ange_hover.play("hover2")
			ange_sprite.animation = "strip"
			ange_dialogue.text = "ANGE_STRIP1"
		["strip", 0]:
			ange_sprite.animation = "cover"
			ange_dialogue.text = "ANGE_STRIP2"

func _on_box_b_pressed():
	if ange_shot > 0:
		ange_shot -= 1
		return
	if ange_scene != "strip":
		$choices.show()
		can_advance = false
		return
	Global.secret_encounter = true
	Global._change_scene("res://scenes/GirlSelect.tscn")
	return
	
func _on_advice_b_pressed():
	ange_scene = "advice"
	ange_shot = 6
	$choices.hide()
	can_advance = true

func _on_compliment_b_pressed():
	ange_scene = "compliment"
	ange_shot = 6
	$choices.hide()
	can_advance = true

func _on_game_b_pressed():
	ange_scene = "game"
	ange_shot = 5
	$choices.hide()
	can_advance = true

func _on_strip_b_pressed():
	ange_scene = "strip"
	ange_shot = 1
	$choices.hide()
	can_advance = true

func _on_key_b_pressed():
	$choices/strip_s.show()
	$choices/strip_b.show()
	$choices/key_s.hide()

func _on_hide_ui_toggled(button_pressed):
	if button_pressed == true:
		$hide_ui_s.animation = "hidden"
		$dialogue.hide()
		return
	$hide_ui_s.animation = "shown"
	$dialogue.show()
