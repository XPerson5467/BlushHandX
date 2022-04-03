extends Node2D

onready var Rps = $RPS_UI

onready var macy_text = $RPS_UI/dialogue/box_t
onready var macy_sprite = $macy_s

func _ready():
	Rps._rps_ready()
	Rps.girl_hand = "R"

func _process(delta):
	Rps._rps_process()
	_macy_hands()
	_macy_state()
	$RPS_UI/compare/girl_hand.frame = 1

func _macy_state():
	match Rps.girl_state:
		#default
		[5, _, "D", _, _]:
			macy_sprite.animation = "D5"
			macy_text.text = "D5_MACY"
			return
		[4, _, "D", _, _]:
			$clothing/MacyCloth1.show()
			macy_sprite.animation = "D4"
			macy_text.text = "D4_MACY"
			return
		[3, _, "D", _, _]:
			$clothing/MacyCloth2.show()
			macy_sprite.animation = "D3"
			macy_text.text = "D3_MACY"
			return
		[2, _, "D", _, _]:
			$clothing/MacyCloth3.show()
			macy_sprite.animation = "D2"
			macy_text.text = "D2_MACY"
			return
		[1, _, "D", _, _]:
			$clothing/MacyCloth4.show()
			macy_sprite.animation = "D1"
			macy_text.text = "D1_MACY"
			return
		[0, _, "D", _, _]:
			$clothing/MacyCloth5.show()
			macy_sprite.animation = "D0"
			macy_text.text = "D0_MACY"
			return
		#lose
		[5, 3, "L", _, _]:
			macy_sprite.animation = "L5"
			macy_text.text = "L5-3_MACY"
			return
		[5, 2, "L", _, _]:
			macy_sprite.animation = "L5"
			macy_text.text = "L5-2_MACY"
			return
		[5, 1, "L", _, _]:
			macy_sprite.animation = "L5"
			macy_text.text = "L5-1_MACY"
			return
		[5, 0, "L", _, _]:
			macy_sprite.animation = "L5"
			macy_text.text = "L5-0_MACY"
			return
		[4, 3, "L", _, _]:
			macy_sprite.animation = "L4"
			macy_text.text = "L4-3_MACY"
			return
		[4, 2, "L", _, _]:
			macy_sprite.animation = "L4"
			macy_text.text = "L4-2_MACY"
			return
		[4, 1, "L", _, _]:
			macy_sprite.animation = "L4"
			macy_text.text = "L4-1_MACY"
			return
		[4, 0, "L", _, _]:
			macy_sprite.animation = "L4"
			macy_text.text = "L4-0_MACY"
			return
		[3, 3, "L", _, _]:
			macy_sprite.animation = "L3"
			macy_text.text = "L3-3_MACY"
			return
		[3, 2, "L", _, _]:
			macy_sprite.animation = "L3"
			macy_text.text = "L3-2_MACY"
			return
		[3, 1, "L", _, _]:
			macy_sprite.animation = "L3"
			macy_text.text = "L3-1_MACY"
			return
		[3, 0, "L", _, _]:
			macy_sprite.animation = "L3"
			macy_text.text = "L3-0_MACY"
			return
		[2, 3, "L", _, _]:
			macy_sprite.animation = "L2"
			macy_text.text = "L2-3_MACY"
			return
		[2, 2, "L", _, _]:
			macy_sprite.animation = "L2"
			macy_text.text = "L2-2_MACY"
			return
		[2, 1, "L", _, _]:
			macy_sprite.animation = "L2"
			macy_text.text = "L2-1_MACY"
			return
		[2, 0, "L", _, _]:
			macy_sprite.animation = "L2"
			macy_text.text = "L2-0_MACY"
			return
		[1, 3, "L", _, _]:
			macy_sprite.animation = "L1"
			macy_text.text = "L1-3_MACY"
			return
		[1, 2, "L", "M", _]:
			macy_sprite.animation = "L1"
			macy_text.text = "L1-2-M_MACY"
			return
		[1, 2, "L", "F", _]:
			macy_sprite.animation = "L1"
			macy_text.text = "L1-F_MACY"
			return
		[1, 1, "L", "M", _]:
			macy_sprite.animation = "L1"
			macy_text.text = "L1-1-M_MACY"
			return
		[1, 1, "L", "F", _]:
			macy_sprite.animation = "L1"
			macy_text.text = "L1-1-F_MACY"
			return
		[1, 0, "L", "M", _]:
			macy_sprite.animation = "L1"
			macy_text.text = "L1-0-M_MACY"
			return
		[1, 0, "L", "F", _]:
			macy_sprite.animation = "L1"
			macy_text.text = "L1-0-F_MACY"
			return
		[0, 3, "L", _, _]:
			macy_sprite.animation = "L0"
			macy_text.text = "L0-3_MACY"
			return
		[0, 2, "L", _, _]:
			macy_sprite.animation = "L0"
			macy_text.text = "L0-2_MACY"
			return
		[0, 1, "L", _, _]:
			macy_sprite.animation = "L0"
			macy_text.text = "L0-1_MACY"
			return
		[0, 0, "L", _, _]:
			macy_sprite.animation = "L0"
			macy_text.text = "L0-0_MACY"
			return
		#Win
		[5, _, "W", _, _]:
			macy_sprite.animation = "W5"
			macy_text.text = "W5_MACY"
			return
		[4, _, "W", _, _]:
			macy_sprite.animation = "W4"
			macy_text.text = "W4_MACY"
			return
		[3, _, "W", _, _]:
			macy_sprite.animation = "W3"
			macy_text.text = "W3_MACY"
			return
		[2, _, "W", _, _]:
			macy_sprite.animation = "W2"
			macy_text.text = "W2_MACY"
			return
		[1, _, "W", _, _]:
			macy_sprite.animation = "W1"
			macy_text.text = "W1_MACY"
			return
		[0, _, "W", _, _]:
			macy_sprite.animation = "W0"
			macy_text.text = "W0_MACY"
			if Rps.cheat_hand <= 8:
				Global.macy_win = true
				if Rps.player_score == 4:
					Global.macy_flawless = true
					return
				return
			return
		#strip
		[5, _, "S", _, _]:
			macy_sprite.animation = "S5"
			macy_text.text = "S5_MACY"
			return
		[4, _, "S", _, _]:
			macy_sprite.animation = "S4"
			macy_text.text = "S4_MACY"
			return
		[3, _, "S", _, _]:
			macy_sprite.animation = "S3"
			macy_text.text = "S3_MACY"
			return
		[2, _, "S", _, _]:
			macy_sprite.animation = "S2"
			macy_text.text = "S2_MACY"
			return
		[1, _, "S", _, _]:
			macy_sprite.animation = "S1"
			macy_text.text = "S1_MACY"
			return
		[0, _, "S", _, _]:
			macy_sprite.animation = "S0"
			macy_text.text = "S0_MACY"
			return

func _macy_hands():
	match Rps.girl_state:
		#lose hands
		[5, _, _, _, "L"]:
			Rps.girl_hand = "R"
		[4, _, _, _, "L"]:
			Rps.girl_hand = "S"
		[3, _, _, _, "L"]:
			Rps.girl_hand = "S"
		[2, _, _, _, "L"]:
			Rps.girl_hand = "S"
		[1, _, _, _, "L"]:
			Rps.girl_hand = "P"
		[0, _, _, _, "L"]:
			Rps.girl_hand = "R"
		#draw hands
		[5, _, _, _, "T"]:
			Rps.girl_hand = "S"
		[4, _, _, _, "T"]:
			Rps.girl_hand = "R"
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
			Rps.girl_hand = "S"
		[3, _, _, "M", "W"]:
			Rps.girl_hand = "R"
		[2, _, _, "M", "W"]:
			Rps.girl_hand = "P"
		[1, _, _, "M", "W"]:
			Rps.girl_hand = "R"
		[0, _, _, "M", "W"]:
			Rps.girl_hand = "S"
		[5, _, _, "M", "W"]:
			Rps.girl_hand = "S"
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
