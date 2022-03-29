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

func _macy_state():
	match Rps.girl_state:
		#default
		[5, _, "D", _, _]:
			macy_sprite.animation = "D5"
			macy_text.text = "D5_KEY"
			return
		[4, _, "D", _, _]:
			macy_sprite.animation = "D4"
			macy_text.text = "D4_KEY"
			return
		[3, _, "D", _, _]:
			macy_sprite.animation = "D3"
			macy_text.text = "D3_KEY"
			return
		[2, _, "D", _, _]:
			macy_sprite.animation = "D2"
			macy_text.text = "D2_KEY"
			return
		[1, _, "D", _, _]:
			macy_sprite.animation = "D1"
			macy_text.text = "D1_KEY"
			return
		[0, _, "D", _, _]:
			macy_sprite.animation = "D0"
			macy_text.text = "D0_KEY"
			return
		#lose
		#lose
		[5, 3, "L", _, _]:
			macy_sprite.animation = "L5"
			macy_text.text = "L5-3_KEY"
			return
		[5, 2, "L", _, _]:
			macy_sprite.animation = "L5"
			macy_text.text = "L5-2_KEY"
			return
		[5, 1, "L", _, _]:
			macy_sprite.animation = "L5"
			macy_text.text = "L5-1_KEY"
			return
		[5, 0, "L", _, _]:
			macy_sprite.animation = "L5"
			macy_text.text = "L5-0_KEY"
			return
		[4, 3, "L", _, _]:
			macy_sprite.animation = "L4"
			macy_text.text = "L4-3_KEY"
			return
		[4, 2, "L", _, _]:
			macy_sprite.animation = "L4"
			macy_text.text = "L4-2_KEY"
			return
		[4, 1, "L", _, _]:
			macy_sprite.animation = "L4"
			macy_text.text = "L4-1_KEY"
			return
		[4, 0, "L", _, _]:
			macy_sprite.animation = "L4"
			macy_text.text = "L4-0_KEY"
			return
		[3, 3, "L", _, _]:
			macy_sprite.animation = "L3"
			macy_text.text = "L3-3_KEY"
			return
		[3, 2, "L", _, _]:
			macy_sprite.animation = "L3"
			macy_text.text = "L3-2_KEY"
			return
		[3, 1, "L", _, _]:
			macy_sprite.animation = "L3"
			macy_text.text = "L3-1_KEY"
			return
		[3, 0, "L", _, _]:
			macy_sprite.animation = "L3"
			macy_text.text = "L3-0_KEY"
			return
		[2, 3, "L", _, _]:
			macy_sprite.animation = "L2"
			macy_text.text = "L2-3_KEY"
			return
		[2, 2, "L", _, _]:
			macy_sprite.animation = "L2"
			macy_text.text = "L2-2_KEY"
			return
		[2, 1, "L", _, _]:
			macy_sprite.animation = "L2"
			macy_text.text = "L2-1_KEY"
			return
		[2, 0, "L", _, _]:
			macy_sprite.animation = "L2"
			macy_text.text = "L2-0_KEY"
			return
		[1, 3, "L", _, _]:
			macy_sprite.animation = "L1"
			macy_text.text = "L1-3_KEY"
			return
		[1, 2, "L", _, _]:
			macy_sprite.animation = "L1"
			macy_text.text = "L1-2_KEY"
			return
		[1, 1, "L", _, _]:
			macy_sprite.animation = "L1"
			macy_text.text = "L1-1_KEY"
			return
		[1, 0, "L", _, _]:
			macy_sprite.animation = "L1"
			macy_text.text = "L1-0_KEY"
			return
		[0, 3, "L", _, _]:
			macy_sprite.animation = "L0"
			macy_text.text = "L0-3_KEY"
			return
		[0, 2, "L", _, _]:
			macy_sprite.animation = "L0"
			macy_text.text = "L0-2_KEY"
			return
		[0, 1, "L", _, _]:
			macy_sprite.animation = "L0"
			macy_text.text = "L0-1_KEY"
			return
		[0, 0, "L", _, _]:
			macy_sprite.animation = "L0"
			macy_text.text = "L0-0_KEY"
			return
		#Win
		[5, _, "W", _, _]:
			macy_sprite.animation = "W5"
			macy_text.text = "W5_KEY"
			return
		[4, _, "W", _, _]:
			macy_sprite.animation = "W4"
			macy_text.text = "W4_KEY"
			return
		[3, _, "W", _, _]:
			macy_sprite.animation = "W3"
			macy_text.text = "W3_KEY"
			return
		[2, _, "W", _, _]:
			macy_sprite.animation = "W2"
			macy_text.text = "W2_KEY"
			return
		[1, _, "W", _, _]:
			macy_sprite.animation = "W1"
			macy_text.text = "W1_KEY"
			return
		[0, _, "W", _, _]:
			macy_sprite.animation = "W0"
			macy_text.text = "W0_KEY"
			if Rps.cheat_hand >= 8:
				return
			Global.gal_win = true
			return
		#strip
		[5, _, "S", _, _]:
			macy_sprite.animation = "S5"
			macy_text.text = "S5_KEY"
			return
		[4, _, "S", _, _]:
			macy_sprite.animation = "S4"
			macy_text.text = "S4_KEY"
			return
		[3, _, "S", _, _]:
			macy_sprite.animation = "S3"
			macy_text.text = "S3_KEY"
			return
		[2, _, "S", _, _]:
			macy_sprite.animation = "S2"
			macy_text.text = "S2_KEY"
			return
		[1, _, "S", _, _]:
			macy_sprite.animation = "S1"
			macy_text.text = "S1_KEY"
			return
		[0, _, "S", _, _]:
			macy_sprite.animation = "S0"
			macy_text.text = "S0_KEY"
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
		[5, _, _, "M", "W"]:
			Rps.girl_hand = "S"
		[4, _, _, "M", "W"]:
			Rps.girl_hand = "R"
		[3, _, _, "M", "W"]:
			Rps.girl_hand = "P"
		[2, _, _, "M", "W"]:
			Rps.girl_hand = "R"
		[1, _, _, "M", "W"]:
			Rps.girl_hand = "S"
		[0, _, _, "M", "W"]:
			Rps.girl_hand = "S"
		#win hands for female
		[5, _, _, "F", "W"]:
			Rps.girl_hand = "R"
		[4, _, _, "F", "W"]:
			Rps.girl_hand = "R"
		[3, _, _, "F", "W"]:
			Rps.girl_hand = "P"
		[2, _, _, "F", "W"]:
			Rps.girl_hand = "S"
		[1, _, _, "F", "W"]:
			Rps.girl_hand = "R"
		[0, _, _, "F", "W"]:
			Rps.girl_hand = "S"
