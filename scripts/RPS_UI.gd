extends Node2D

var girl_score
var player_score
onready var current_scene = "D"
onready var cheat_hand = 0
var gauntlet_mode

var player_hand
var girl_hand

var hand_compare
var result_check
var result_hand
onready var player_sprite = $player/player_b

var girl_state

func _rps_ready():
	girl_score = 5
	player_score = 4
	gauntlet_mode = false

func _gauntlet_ready():
	girl_score = 11
	player_score = 1
	gauntlet_mode = true

func _rps_process():
	girl_state = [girl_score, player_score, current_scene, Global.player_body_type, result_hand]
	hand_compare = [player_hand,girl_hand]
	_player_sprite()
	_girl_hand_sprite()
	_hand_logic()
	_cheat_hand()

func _player_sprite():
	player_sprite.frame = player_score
	if gauntlet_mode == true:
		match Global.player_body_type:
			"M":
				player_sprite.animation = "male_t"
				return
			"F":
				player_sprite.animation = "female_t"
				return
	match Global.player_body_type:
		"M":
			player_sprite.animation = "male"
			return
		"F":
			player_sprite.animation = "female"
			return

func _girl_hand_sprite():
	var girl_hand_sprite = $compare/girl_hand
	match girl_hand:
		"R":
			girl_hand_sprite.animation = "rock"
		"P":
			girl_hand_sprite.animation = "paper"
		"S":
			girl_hand_sprite.animation = "scissors"

func _hand_logic():
	match hand_compare:
		#draw logic
		["R","R"]:
			$compare/compar_t.set_text("DRAW_KEY")
			$compare/strip_s.set_animation("draw")
			result_check = "T"
			return
		["P","P"]:
			$compare/compar_t.set_text("DRAW_KEY")
			$compare/strip_s.set_animation("draw")
			result_check = "T"
			return
		["S","S"]:
			$compare/compar_t.set_text("DRAW_KEY")
			$compare/strip_s.set_animation("draw")
			result_check = "T"
			return
		#lose logic
		["R","P"]:
			$compare/compar_t.set_text("LOSE_KEY")
			$compare/strip_s.set_animation("lose")
			result_check = "L"
			return
		["P","S"]:
			$compare/compar_t.set_text("LOSE_KEY")
			$compare/strip_s.set_animation("lose")
			result_check = "L"
			return
		["S","R"]:
			$compare/compar_t.set_text("LOSE_KEY")
			$compare/strip_s.set_animation("lose")
			result_check = "L"
			return
		#win logic
		["R","S"]:
			$compare/compar_t.set_text("WIN_KEY")
			$compare/strip_s.set_animation("win")
			result_check = "W"
			return
		["P","R"]:
			$compare/compar_t.set_text("WIN_KEY")
			$compare/strip_s.set_animation("win")
			result_check = "W"
			return
		["S","P"]:
			$compare/compar_t.set_text("WIN_KEY")
			$compare/strip_s.set_animation("win")
			result_check = "W"
			return

func _hide_hand_box():
	$hand_box.modulate = Color(0.25, 0.25, 0.25)
	$hand_box/rock_b.hide()
	$hand_box/paper_b.hide()
	$hand_box/scissors_b.hide()

func _show_hand_box():
	$hand_box.modulate = Color(1, 1, 1)
	$hand_box/rock_b.show()
	$hand_box/paper_b.show()
	$hand_box/scissors_b.show()
	$dialogue/next/indecator.current_animation = "invisible"

func _on_back_b_pressed():
	if gauntlet_mode == true:
		Global._change_scene("res://scenes/Gauntlet_Menu.tscn")
		return
	Global._change_scene("res://scenes/GirlSelect.tscn")

func _on_rock_b_pressed():
	player_hand = "R"
	$compare/player_hand.set_animation("rock")
	$compare.show()
	_hide_hand_box()
	return

func _on_paper_b_pressed():
	player_hand = "P"
	$compare/player_hand.set_animation("paper")
	$compare.show()
	_hide_hand_box()
	return

func _on_scissors_b_pressed():
	player_hand = "S"
	$compare/player_hand.set_animation("scissors")
	$compare.show()
	_hide_hand_box()
	return

func _on_strip_b_pressed():
	match result_check:
		"L":
			result_hand = "L"
			player_score -= 1
			current_scene = "L"
			$compare.hide()
			if player_score > 0:
				_show_hand_box()
				return
			return
		"T":
			result_hand = "T"
			$compare.hide()
			_show_hand_box()
			return
		"W":
			result_hand = "W"
			current_scene = "W"
			$compare.hide()
			$dialogue/next/indecator.current_animation = "blink"
			return

func _on_box_b_pressed():
	match current_scene:
		"W":
			current_scene = "S"
			return
		"S":
			if girl_score <= 0:
				if gauntlet_mode == true:
					Global._change_scene("res://scenes/Gauntlet_Win.tscn")
					return
				Global._change_scene("res://scenes/GirlSelect.tscn")
				return
			girl_score -= 1
			current_scene = "D"
			_show_hand_box()
			return
		"L":
			if player_score <= 0:
				if gauntlet_mode == true:
					Global._change_scene("res://scenes/Gauntlet_Lose.tscn")
					return
				Global._change_scene("res://scenes/GirlSelect.tscn")
				return
			return

func _cheat_hand():
	var cheat_text = $player/cheater
	if cheat_hand >= 8:
		cheat_text.show()
	match girl_hand:
		"R":
			cheat_text.text = "ROCK_CHEAT"
		"P":
			cheat_text.text = "PAPER_CHEAT"
		"S":
			cheat_text.text = "SCISSOR_CHEAT"

func _on_cheat_b_pressed():
	cheat_hand += 1
