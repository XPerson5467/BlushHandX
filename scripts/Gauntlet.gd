extends Node2D

onready var Rps = $RPS_UI

onready var gauntlet_name = $name
onready var gauntlet_text = $RPS_UI/dialogue/box_t
onready var gauntlet_sprite = $gauntlet_s

onready var gauntletBG = $Background

func _ready():
	Rps._gauntlet_ready()
	Rps.girl_hand = "R"

func _process(delta):
	Rps._rps_process()
	_gauntlet_hands()
	_gauntlet_state()
	$RPS_UI/compare/girl_hand.frame = 0

func _gauntlet_state():
	match Rps.girl_state:
		#default
		[11, _, "D", _, _]:
			gauntletBG.modulate = Color(0.18, 0.84, 0.65)
			gauntlet_name.text = "MIMI_NAME"
			gauntlet_sprite.animation = "D11"
			gauntlet_text.text = "D11_GAUNTLET"
			return
		[10, _, "D", _, _]:
			gauntletBG.modulate = Color(0.78, 0.70, 0.43)
			gauntlet_name.text = "PALEO_NAME"
			gauntlet_sprite.animation = "D10"
			gauntlet_text.text = "D10_GAUNTLET"
			return
		[9, _, "D", _, _]:
			gauntletBG.modulate = Color(0.75, 0.24, 0.51)
			gauntlet_name.text = "MAN_NAME"
			gauntlet_sprite.animation = "D9"
			gauntlet_text.text = "D9_GAUNTLET"
			return
		[8, _, "D", _, _]:
			gauntletBG.modulate = Color(0.51, 0.4, 0.84)
			gauntlet_name.text = "KHRIS_NAME"
			gauntlet_sprite.animation = "D8"
			gauntlet_text.text = "D8_GAUNTLET"
			return
		[7, _, "D", _, _]:
			gauntletBG.modulate = Color(0.96, 0.53, 0.49)
			gauntlet_name.text = "TIFF_NAME"
			gauntlet_sprite.animation = "D7"
			gauntlet_text.text = "D7_GAUNTLET"
			return
		[6, _, "D", _, _]:
			gauntletBG.modulate = Color(0.53, 0.45, 0.57)
			gauntlet_name.text = "BATH_NAME"
			gauntlet_sprite.animation = "D6"
			gauntlet_text.text = "D6_GAUNTLET"
			return
		[5, _, "D", "M", _]:
			gauntletBG.modulate = Color(0.63, 0.71, 0.39)
			gauntlet_name.text = "JET_NAME"
			gauntlet_sprite.animation = "D5"
			gauntlet_text.text = "D5-M_GAUNTLET"
			return
		[5, _, "D", "F", _]:
			gauntletBG.modulate = Color(0.63, 0.71, 0.39)
			gauntlet_name.text = "JET_NAME"
			gauntlet_sprite.animation = "D5"
			gauntlet_text.text = "D5-F_GAUNTLET"
			return
		[4, _, "D", _, _]:
			gauntletBG.modulate = Color(0.29, 0.41, 0.73)
			gauntlet_name.text = "CASSIE_NAME"
			gauntlet_sprite.animation = "D4"
			gauntlet_text.text = "D4_GAUNTLET"
			return
		[3, _, "D", _, _]:
			gauntletBG.modulate = Color(0.71, 0.18, 0.29)
			gauntlet_name.text = "KNIGHT_NAME"
			gauntlet_sprite.animation = "D3"
			gauntlet_text.text = "D3_GAUNTLET"
			return
		[2, _, "D", _, _]:
			gauntletBG.modulate = Color(0.86, 0.63, 0.2)
			gauntlet_name.text = "NILE1_NAME"
			gauntlet_sprite.animation = "D2"
			gauntlet_text.text = "D2_GAUNTLET"
			return
		[1, _, "D", _, _]:
			gauntletBG.modulate = Color(0.75, 0.47, 0.12)
			gauntlet_text.text = "D1_GAUNTLET"
			return
		[0, _, "D", _, _]:
			gauntletBG.modulate = Color(0.60, 0.25, 0.01)
			gauntlet_name.text = "NILE2_NAME"
			gauntlet_text.text = "D0_GAUNTLET"
			return
		#lose
		[11, _, "L", _, _]:
			gauntlet_text.text = "L11_GAUNTLET"
			return
		[10, _, "L", "M", _]:
			gauntlet_text.text = "L10-M_GAUNTLET"
			return
		[10, _, "L", "F", _]:
			gauntlet_text.text = "L10-F_GAUNTLET"
			return
		[9, _, "L", "M", _]:
			gauntlet_text.text = "L9-M_GAUNTLET"
			return
		[9, _, "L", "F", _]:
			gauntlet_text.text = "L9-F_GAUNTLET"
			return
		[8, _, "L", _, _]:
			gauntlet_text.text = "L8_GAUNTLET"
			return
		[7, _, "L", _, _]:
			gauntlet_text.text = "L7_GAUNTLET"
			return
		[6, _, "L", "M", _]:
			gauntlet_text.text = "L6-M_GAUNTLET"
			return
		[6, _, "L", "F", _]:
			gauntlet_text.text = "L6-F_GAUNTLET"
			return
		[5, _, "L", "M", _]:
			gauntlet_text.text = "L5-M_GAUNTLET"
			return
		[5, _, "L", "F", _]:
			gauntlet_text.text = "L5-F_GAUNTLET"
			return
		[4, _, "L", _, _]:
			gauntlet_text.text = "L4_GAUNTLET"
			return
		[3, _, "L", "M", _]:
			gauntlet_text.text = "L3-M_GAUNTLET"
			return
		[3, _, "L", "F", _]:
			gauntlet_text.text = "L3-F_GAUNTLET"
			return
		[2, _, "L", _, _]:
			gauntlet_text.text = "L2_GAUNTLET"
			return
		[1, _, "L", "M", _]:
			gauntlet_text.text = "L1-M_GAUNTLET"
			return
		[1, _, "L", "F", _]:
			gauntlet_text.text = "L1-F_GAUNTLET"
			return
		[0, _, "L", _, _]:
			gauntlet_text.text = "L0_GAUNTLET"
			return
		#Win
		[11, _, "W", _, _]:
			gauntlet_sprite.animation = "W11"
			gauntlet_text.text = "W11_GAUNTLET"
			return
		[10, _, "W", _, _]:
			gauntlet_sprite.animation = "W10"
			gauntlet_text.text = "W10_GAUNTLET"
			return
		[9, _, "W", _, _]:
			gauntlet_sprite.animation = "W9"
			gauntlet_text.text = "W9_GAUNTLET"
			return
		[8, _, "W", _, _]:
			gauntlet_sprite.animation = "W8"
			gauntlet_text.text = "W8_GAUNTLET"
			return
		[7, _, "W", _, _]:
			gauntlet_sprite.animation = "W7"
			gauntlet_text.text = "W7_GAUNTLET"
			return
		[6, _, "W", _, _]:
			gauntlet_sprite.animation = "W6"
			gauntlet_text.text = "W6_GAUNTLET"
			return
		[5, _, "W", _, _]:
			gauntlet_sprite.animation = "W5"
			gauntlet_text.text = "W5_GAUNTLET"
			return
		[4, _, "W", _, _]:
			gauntlet_sprite.animation = "W4"
			gauntlet_text.text = "W4_GAUNTLET"
			return
		[3, _, "W", _, _]:
			gauntlet_sprite.animation = "W3"
			gauntlet_text.text = "W3_GAUNTLET"
			return
		[2, _, "W", _, _]:
			gauntlet_text.text = "W2_GAUNTLET"
			return
		[1, _, "W", _, _]:
			gauntlet_text.text = "W1_GAUNTLET"
			return
		[0, _, "W", _, _]:
			gauntlet_sprite.animation = "W0"
			gauntlet_text.text = "W0_GAUNTLET"
			if Rps.cheat_hand >= 8:
				return
			Global.gauntlet_win = true
			return
		#strip
		[11, _, "S", _, _]:
			gauntlet_sprite.animation = "S11"
			gauntlet_text.text = "S11_GAUNTLET"
			return
		[10, _, "S", _, _]:
			gauntlet_sprite.animation = "S10"
			gauntlet_text.text = "S10_GAUNTLET"
			return
		[9, _, "S", _, _]:
			gauntlet_sprite.animation = "S9"
			gauntlet_text.text = "S9_GAUNTLET"
			return
		[8, _, "S", _, _]:
			gauntlet_sprite.animation = "S8"
			gauntlet_text.text = "S8_GAUNTLET"
			return
		[7, _, "S", _, _]:
			gauntlet_sprite.animation = "S7"
			gauntlet_text.text = "S7_GAUNTLET"
			return
		[6, _, "S", _, _]:
			gauntlet_sprite.animation = "S6"
			gauntlet_text.text = "S6_GAUNTLET"
			return
		[5, _, "S", "M", _]:
			gauntlet_sprite.animation = "S5"
			gauntlet_text.text = "S5-M_GAUNTLET"
			return
		[5, _, "S", "F", _]:
			gauntlet_sprite.animation = "S5"
			gauntlet_text.text = "S5-F_GAUNTLET"
			return
		[4, _, "S", _, _]:
			gauntlet_sprite.animation = "S4"
			gauntlet_text.text = "S4_GAUNTLET"
			return
		[3, _, "S", "M", _]:
			gauntlet_sprite.animation = "S3"
			gauntlet_text.text = "S3-M_GAUNTLET"
			return
		[3, _, "S", "F", _]:
			gauntlet_sprite.animation = "S3"
			gauntlet_text.text = "S3-F_GAUNTLET"
			return
		[2, _, "S", _, _]:
			gauntlet_sprite.animation = "S2"
			gauntlet_text.text = "S2_GAUNTLET"
			return
		[1, _, "S", _, _]:
			gauntlet_sprite.animation = "S1"
			gauntlet_text.text = "S1_GAUNTLET"
			return
		[0, _, "S", _, _]:
			gauntlet_sprite.animation = "S0"
			gauntlet_text.text = "S0_GAUNTLET"
			return

func _gauntlet_hands():
	match Rps.girl_state:
		#lose hands
		[11, _, _, _, "L"]:
			Rps.girl_hand = "R"
		[10, _, _, _, "L"]:
			Rps.girl_hand = "P"
		[9, _, _, _, "L"]:
			Rps.girl_hand = "P"
		[8, _, _, _, "L"]:
			Rps.girl_hand = "R"
		[7, _, _, _, "L"]:
			Rps.girl_hand = "S"
		[6, _, _, _, "L"]:
			Rps.girl_hand = "P"
		[5, _, _, _, "L"]:
			Rps.girl_hand = "P"
		[4, _, _, _, "L"]:
			Rps.girl_hand = "R"
		[3, _, _, _, "L"]:
			Rps.girl_hand = "S"
		[2, _, _, _, "L"]:
			Rps.girl_hand = "S"
		[1, _, _, _, "L"]:
			Rps.girl_hand = "R"
		[0, _, _, _, "L"]:
			Rps.girl_hand = "S"
		#draw hands
		[11, _, _, _, "T"]:
			Rps.girl_hand = "S"
		[10, _, _, _, "T"]:
			Rps.girl_hand = "P"
		[9, _, _, _, "T"]:
			Rps.girl_hand = "R"
		[8, _, _, _, "T"]:
			Rps.girl_hand = "R"
		[7, _, _, _, "T"]:
			Rps.girl_hand = "S"
		[6, _, _, _, "T"]:
			Rps.girl_hand = "S"
		[5, _, _, _, "T"]:
			Rps.girl_hand = "S"
		[4, _, _, _, "T"]:
			Rps.girl_hand = "R"
		[3, _, _, _, "T"]:
			Rps.girl_hand = "P"
		[2, _, _, _, "T"]:
			Rps.girl_hand = "R"
		[1, _, _, _, "T"]:
			Rps.girl_hand = "R"
		[0, _, _, _, "T"]:
			Rps.girl_hand = "S"
		#win hands
		[10, _, _, _, ""]:
			Rps.girl_hand = "R"
		[9, _, _, _, "W"]:
			Rps.girl_hand = "S"
		[8, _, _, _, "W"]:
			Rps.girl_hand = "P"
		[7, _, _, _, "W"]:
			Rps.girl_hand = "S"
		[6, _, _, _, "W"]:
			Rps.girl_hand = "P"
		[5, _, _, _, "W"]:
			Rps.girl_hand = "R"
		[4, _, _, _, "W"]:
			Rps.girl_hand = "P"
		[3, _, _, _, "W"]:
			Rps.girl_hand = "P"
		[2, _, _, _, "W"]:
			Rps.girl_hand = "S"
		[1, _, _, _, "W"]:
			Rps.girl_hand = "R"
		[0, _, _, _, "W"]:
			Rps.girl_hand = "P"
		[11, _, _, _, "W"]:
			Rps.girl_hand = "R"
