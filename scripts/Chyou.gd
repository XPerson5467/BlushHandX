extends Node2D

onready var Rps = $RPS_UI

onready var chyou_text = $RPS_UI/dialogue/box_t
onready var chyou_sprite = $chyou_s

func _ready():
	Rps._rps_ready()
	Rps.girl_hand = "R"

func _process(delta):
	Rps._rps_process()
	_chyou_hands()
	_chyou_state()

func _chyou_state():
	match Rps.girl_state:
		#default
		[5, _, "D", _, _]:
			chyou_sprite.animation = "D5"
			chyou_text.text = "D5_CHYOU"
			return
		[4, _, "D", _, _]:
			chyou_sprite.animation = "D4"
			chyou_text.text = "D4_CHYOU"
			return
		[3, _, "D", _, _]:
			chyou_sprite.animation = "D3"
			chyou_text.text = "D3_CHYOU"
			return
		[2, _, "D", _, _]:
			chyou_sprite.animation = "D2"
			chyou_text.text = "D2_CHYOU"
			return
		[1, _, "D", _, _]:
			chyou_sprite.animation = "D1"
			chyou_text.text = "D1_CHYOU"
			return
		[0, _, "D", _, _]:
			chyou_sprite.animation = "D0"
			chyou_text.text = "D0_CHYOU"
			return
		#lose
		#lose
		[5, 3, "L", _, _]:
			chyou_sprite.animation = "L5"
			chyou_text.text = "L5-3_CHYOU"
			return
		[5, 2, "L", _, _]:
			chyou_sprite.animation = "L5"
			chyou_text.text = "L5-2_CHYOU"
			return
		[5, 1, "L", _, _]:
			chyou_sprite.animation = "L5"
			chyou_text.text = "L5-1_CHYOU"
			return
		[5, 0, "L", _, _]:
			chyou_sprite.animation = "L5"
			chyou_text.text = "L5-0_CHYOU"
			return
		[4, 3, "L", _, _]:
			chyou_sprite.animation = "L4"
			chyou_text.text = "L4-3_CHYOU"
			return
		[4, 2, "L", _, _]:
			chyou_sprite.animation = "L4"
			chyou_text.text = "L4-2_CHYOU"
			return
		[4, 1, "L", _, _]:
			chyou_sprite.animation = "L4"
			chyou_text.text = "L4-1_CHYOU"
			return
		[4, 0, "L", _, _]:
			chyou_sprite.animation = "L4"
			chyou_text.text = "L4-0_CHYOU"
			return
		[3, 3, "L", _, _]:
			chyou_sprite.animation = "L3"
			chyou_text.text = "L3-3_CHYOU"
			return
		[3, 2, "L", _, _]:
			chyou_sprite.animation = "L3"
			chyou_text.text = "L3-2_CHYOU"
			return
		[3, 1, "L", _, _]:
			chyou_sprite.animation = "L3"
			chyou_text.text = "L3-1_CHYOU"
			return
		[3, 0, "L", "M", _]:
			chyou_sprite.animation = "L3"
			chyou_text.text = "L3-0-M_CHYOU"
			return
		[3, 0, "L", "F", _]:
			chyou_sprite.animation = "L3"
			chyou_text.text = "L3-0-F_CHYOU"
			return
		[2, 3, "L", _, _]:
			chyou_sprite.animation = "L2"
			chyou_text.text = "L2-3_CHYOU"
			return
		[2, 2, "L", _, _]:
			chyou_sprite.animation = "L2"
			chyou_text.text = "L2-2_CHYOU"
			return
		[2, 1, "L", "M", _]:
			chyou_sprite.animation = "L2"
			chyou_text.text = "L2-1-M_CHYOU"
			return
		[2, 1, "L", "F", _]:
			chyou_sprite.animation = "L2"
			chyou_text.text = "L2-1-F_CHYOU"
			return
		[2, 0, "L", _, _]:
			chyou_sprite.animation = "L2"
			chyou_text.text = "L2-0_CHYOU"
			return
		[1, 3, "L", _, _]:
			chyou_sprite.animation = "L1"
			chyou_text.text = "L1-3_CHYOU"
			return
		[1, 2, "L", "M", _]:
			chyou_sprite.animation = "L1"
			chyou_text.text = "L1-2-M_CHYOU"
			return
		[1, 2, "L", "F", _]:
			chyou_sprite.animation = "L1"
			chyou_text.text = "L1-2-F_CHYOU"
			return
		[1, 1, "L", _, _]:
			chyou_sprite.animation = "L1"
			chyou_text.text = "L1-1_CHYOU"
			return
		[1, 0, "L", "M", _]:
			chyou_sprite.animation = "L1"
			chyou_text.text = "L1-0-M_CHYOU"
			return
		[1, 0, "L", "F", _]:
			chyou_sprite.animation = "L1"
			chyou_text.text = "L1-0-F_CHYOU"
			return
		[0, 3, "L", "M", _]:
			chyou_sprite.animation = "L0"
			chyou_text.text = "L0-3-M_CHYOU"
			return
		[0, 3, "L", "F", _]:
			chyou_sprite.animation = "L0"
			chyou_text.text = "L0-3-F_CHYOU"
			return
		[0, 2, "L", "M", _]:
			chyou_sprite.animation = "L0"
			chyou_text.text = "L0-2-M_CHYOU"
			return
		[0, 2, "L", "F", _]:
			chyou_sprite.animation = "L0"
			chyou_text.text = "L0-2-F_CHYOU"
			return
		[0, 1, "L", _, _]:
			chyou_sprite.animation = "L0"
			chyou_text.text = "L0-1_CHYOU"
			return
		[0, 0, "L", "M", _]:
			chyou_sprite.animation = "L0"
			chyou_text.text = "L0-0-M_CHYOU"
			return
		[0, 0, "L", "F", _]:
			chyou_sprite.animation = "L0"
			chyou_text.text = "L0-0-F_CHYOU"
			return
		#Win
		[5, _, "W", _, _]:
			chyou_sprite.animation = "W5"
			chyou_text.text = "W5_CHYOU"
			return
		[4, _, "W", _, _]:
			chyou_sprite.animation = "W4"
			chyou_text.text = "W4_CHYOU"
			return
		[3, _, "W", _, _]:
			chyou_sprite.animation = "W3"
			chyou_text.text = "W3_CHYOU"
			return
		[2, _, "W", _, _]:
			chyou_sprite.animation = "W2"
			chyou_text.text = "W2_CHYOU"
			return
		[1, _, "W", _, _]:
			chyou_sprite.animation = "W1"
			chyou_text.text = "W1_CHYOU"
			return
		[0, _, "W", _, _]:
			chyou_sprite.animation = "W0"
			chyou_text.text = "W0_CHYOU"
			if Rps.cheat_hand >= 8:
				return
			Global.gal_win = true
			return
		#strip
		[5, _, "S", _, _]:
			chyou_sprite.animation = "S5"
			chyou_text.text = "S5_CHYOU"
			return
		[4, _, "S", _, _]:
			chyou_sprite.animation = "S4"
			chyou_text.text = "S4_CHYOU"
			return
		[3, _, "S", _, _]:
			chyou_sprite.animation = "S3"
			chyou_text.text = "S3_CHYOU"
			return
		[2, _, "S", _, _]:
			chyou_sprite.animation = "S2"
			chyou_text.text = "S2_CHYOU"
			return
		[1, _, "S", _, _]:
			chyou_sprite.animation = "S1"
			chyou_text.text = "S1_CHYOU"
			return
		[0, _, "S", _, _]:
			chyou_sprite.animation = "S0"
			chyou_text.text = "S0_CHYOU"
			return

func _chyou_hands():
	match Rps.girl_state:
		#lose hands
		[5, _, _, _, "L"]:
			Rps.girl_hand = "S"
		[4, _, _, _, "L"]:
			Rps.girl_hand = "R"
		[3, _, _, _, "L"]:
			Rps.girl_hand = "S"
		[2, _, _, _, "L"]:
			Rps.girl_hand = "P"
		[1, _, _, _, "L"]:
			Rps.girl_hand = "P"
		[0, _, _, _, "L"]:
			Rps.girl_hand = "R"
		#draw hands
		[5, _, _, _, "T"]:
			Rps.girl_hand = "P"
		[4, _, _, _, "T"]:
			Rps.girl_hand = "P"
		[3, _, _, _, "T"]:
			Rps.girl_hand = "P"
		[2, _, _, _, "T"]:
			Rps.girl_hand = "R"
		[1, _, _, _, "T"]:
			Rps.girl_hand = "S"
		[0, _, _, _, "T"]:
			Rps.girl_hand = "S"
		#win hands for male
		[4, _, _, "M", "W"]:
			Rps.girl_hand = "R"
		[3, _, _, "M", "W"]:
			Rps.girl_hand = "S"
		[2, _, _, "M", "W"]:
			Rps.girl_hand = "R"
		[1, _, _, "M", "W"]:
			Rps.girl_hand = "R"
		[0, _, _, "M", "W"]:
			Rps.girl_hand = "P"
		[5, _, _, "M", "W"]:
			Rps.girl_hand = "R"
		#win hands for female
		[4, _, _, "F", "W"]:
			Rps.girl_hand = "R"
		[3, _, _, "F", "W"]:
			Rps.girl_hand = "R"
		[2, _, _, "F", "W"]:
			Rps.girl_hand = "P"
		[1, _, _, "F", "W"]:
			Rps.girl_hand = "S"
		[0, _, _, "F", "W"]:
			Rps.girl_hand = "R"
		[5, _, _, "F", "W"]:
			Rps.girl_hand = "R"
