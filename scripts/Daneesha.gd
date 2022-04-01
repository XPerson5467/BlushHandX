extends Node2D

onready var Rps = $RPS_UI

onready var dan_text = $RPS_UI/dialogue/box_t
onready var dan_sprite = $dan_s

func _ready():
	Rps._rps_ready()
	Rps.girl_hand = "R"

func _process(delta):
	Rps._rps_process()
	_dan_hands()
	_dan_state()

func _dan_state():
	match Rps.girl_state:
		#default
		[5, _, "D", _, _]:
			dan_sprite.animation = "D5"
			dan_text.text = "D5_DAN"
			return
		[4, _, "D", "M", _]:
			dan_sprite.animation = "D4"
			dan_text.text = "D4-M_DAN"
			return
		[4, _, "D", "F", _]:
			dan_sprite.animation = "D4"
			dan_text.text = "D4-F_DAN"
			return
		[3, _, "D", _, _]:
			dan_sprite.animation = "D3"
			dan_text.text = "D3_DAN"
			return
		[2, _, "D", _, _]:
			dan_sprite.animation = "D2"
			dan_text.text = "D2_DAN"
			return
		[1, _, "D", _, _]:
			dan_sprite.animation = "D1"
			dan_text.text = "D1_DAN"
			return
		[0, _, "D", _, _]:
			dan_sprite.animation = "D0"
			dan_text.text = "D0_DAN"
			return
		#lose
		[5, 3, "L", _, _]:
			dan_sprite.animation = "L5"
			dan_text.text = "L5-3_DAN"
			return
		[5, 2, "L", _, _]:
			dan_sprite.animation = "L5"
			dan_text.text = "L5-2_DAN"
			return
		[5, 1, "L", "M", _]:
			dan_sprite.animation = "L5"
			dan_text.text = "L5-1-M_DAN"
			return
		[5, 1, "L", "F", _]:
			dan_sprite.animation = "L5"
			dan_text.text = "L5-1-F_DAN"
			return
		[5, 0, "L", "M", _]:
			dan_sprite.animation = "L5"
			dan_text.text = "L5-0-M_DAN"
			return
		[5, 0, "L", "F", _]:
			dan_sprite.animation = "L5"
			dan_text.text = "L5-0-F_DAN"
			return
		[4, 3, "L", _, _]:
			dan_sprite.animation = "L4"
			dan_text.text = "L4-3_DAN"
			return
		[4, 2, "L", _, _]:
			dan_sprite.animation = "L4"
			dan_text.text = "L4-2_DAN"
			return
		[4, 1, "L", _, _]:
			dan_sprite.animation = "L4"
			dan_text.text = "L4-1_DAN"
			return
		[4, 0, "L", _, _]:
			dan_sprite.animation = "L4"
			dan_text.text = "L4-0_DAN"
			return
		[3, 3, "L", _, _]:
			dan_sprite.animation = "L3"
			dan_text.text = "L3-3_DAN"
			return
		[3, 2, "L", _, _]:
			dan_sprite.animation = "L3"
			dan_text.text = "L3-2_DAN"
			return
		[3, 1, "L", _, _]:
			dan_sprite.animation = "L3"
			dan_text.text = "L3-1_DAN"
			return
		[3, 0, "L", "M", _]:
			dan_sprite.animation = "L3"
			dan_text.text = "L3-0-M_DAN"
			return
		[3, 0, "L", "F", _]:
			dan_sprite.animation = "L3"
			dan_text.text = "L3-0-F_DAN"
			return
		[2, 3, "L", _, _]:
			dan_sprite.animation = "L2"
			dan_text.text = "L2-3_DAN"
			return
		[2, 2, "L", "M", _]:
			dan_sprite.animation = "L2"
			dan_text.text = "L2-2-M_DAN"
			return
		[2, 2, "L", "F", _]:
			dan_sprite.animation = "L2"
			dan_text.text = "L2-2-F_DAN"
			return
		[2, 1, "L", _, _]:
			dan_sprite.animation = "L2"
			dan_text.text = "L2-1_DAN"
			return
		[2, 0, "L", _, _]:
			dan_sprite.animation = "L2"
			dan_text.text = "L2-0_DAN"
			return
		[1, 3, "L", _, _]:
			dan_sprite.animation = "L1"
			dan_text.text = "L1-3_DAN"
			return
		[1, 2, "L", _, _]:
			dan_sprite.animation = "L1"
			dan_text.text = "L1-2_DAN"
			return
		[1, 1, "L", _, _]:
			dan_sprite.animation = "L1"
			dan_text.text = "L1-1_DAN"
			return
		[1, 0, "L", "M", _]:
			dan_sprite.animation = "L1"
			dan_text.text = "L1-0-M_DAN"
			return
		[1, 0, "L", "F", _]:
			dan_sprite.animation = "L1"
			dan_text.text = "L1-0-F_DAN"
			return
		[0, 3, "L", _, _]:
			dan_sprite.animation = "L0"
			dan_text.text = "L0-3_DAN"
			return
		[0, 2, "L", "M", _]:
			dan_sprite.animation = "L0"
			dan_text.text = "L0-2-M_DAN"
			return
		[0, 2, "L", "F", _]:
			dan_sprite.animation = "L0"
			dan_text.text = "L0-2-F_DAN"
			return
		[0, 1, "L", "M", _]:
			dan_sprite.animation = "L0"
			dan_text.text = "L0-1-M_DAN"
			return
		[0, 1, "L", "F", _]:
			dan_sprite.animation = "L0"
			dan_text.text = "L0-1-F_DAN"
			return
		[0, 0, "L", _, _]:
			dan_sprite.animation = "L0"
			dan_text.text = "L0-0_DAN"
			return
		#Win
		[5, _, "W", _, _]:
			dan_sprite.animation = "W5"
			dan_text.text = "W5_DAN"
			return
		[4, _, "W", _, _]:
			dan_sprite.animation = "W4"
			dan_text.text = "W4_DAN"
			return
		[3, _, "W", _, _]:
			dan_sprite.animation = "W3"
			dan_text.text = "W3_DAN"
			return
		[2, _, "W", _, _]:
			dan_sprite.animation = "W2"
			dan_text.text = "W2_DAN"
			return
		[1, _, "W", _, _]:
			dan_sprite.animation = "W1"
			dan_text.text = "W1_DAN"
			return
		[0, _, "W", _, _]:
			dan_sprite.animation = "W0"
			dan_text.text = "W0_DAN"
			if Rps.cheat_hand >= 8:
				Global.dan_win = true
				return
			return
		#strip
		[5, _, "S", _, _]:
			dan_sprite.animation = "S5"
			dan_text.text = "S5_DAN"
			return
		[4, _, "S", _, _]:
			dan_sprite.animation = "S4"
			dan_text.text = "S4_DAN"
			return
		[3, _, "S", "M", _]:
			dan_sprite.animation = "S3"
			dan_text.text = "S3-M_DAN"
			return
		[3, _, "S", "F", _]:
			dan_sprite.animation = "S3"
			dan_text.text = "S3-F_DAN"
			return
		[2, _, "S", _, _]:
			dan_sprite.animation = "S2"
			dan_text.text = "S2_DAN"
			return
		[1, _, "S", "M", _]:
			dan_sprite.animation = "S1"
			dan_text.text = "S1-M_DAN"
			return
		[1, _, "S", "F", _]:
			dan_sprite.animation = "S1"
			dan_text.text = "S1-F_DAN"
			return
		[0, _, "S", _, _]:
			dan_sprite.animation = "S0"
			dan_text.text = "S0_DAN"
			return

func _dan_hands():
	match Rps.girl_state:
		#lose hands
		[5, _, _, _, "L"]:
			Rps.girl_hand = "R"
		[4, _, _, _, "L"]:
			Rps.girl_hand = "P"
		[3, _, _, _, "L"]:
			Rps.girl_hand = "S"
		[2, _, _, _, "L"]:
			Rps.girl_hand = "P"
		[1, _, _, _, "L"]:
			Rps.girl_hand = "P"
		[0, _, _, _, "L"]:
			Rps.girl_hand = "P"
		#draw hands
		[5, _, _, _, "T"]:
			Rps.girl_hand = "S"
		[4, _, _, _, "T"]:
			Rps.girl_hand = "P"
		[3, _, _, _, "T"]:
			Rps.girl_hand = "P"
		[2, _, _, _, "T"]:
			Rps.girl_hand = "R"
		[1, _, _, _, "T"]:
			Rps.girl_hand = "R"
		[0, _, _, _, "T"]:
			Rps.girl_hand = "R"
		#win hands for male
		[4, _, _, "M", "W"]:
			Rps.girl_hand = "R"
		[3, _, _, "M", "W"]:
			Rps.girl_hand = "S"
		[2, _, _, "M", "W"]:
			Rps.girl_hand = "S"
		[1, _, _, "M", "W"]:
			Rps.girl_hand = "S"
		[0, _, _, "M", "W"]:
			Rps.girl_hand = "P"
		[5, _, _, "M", "W"]:
			Rps.girl_hand = "R"
		#win hands for female
		[4, _, _, "F", "W"]:
			Rps.girl_hand = "S"
		[3, _, _, "F", "W"]:
			Rps.girl_hand = "R"
		[2, _, _, "F", "W"]:
			Rps.girl_hand = "P"
		[1, _, _, "F", "W"]:
			Rps.girl_hand = "P"
		[0, _, _, "F", "W"]:
			Rps.girl_hand = "P"
		[5, _, _, "F", "W"]:
			Rps.girl_hand = "S"
