extends Node2D

onready var Rps = $RPS_UI

onready var gal_text = $RPS_UI/dialogue/box_t
onready var gal_sprite = $gal_s

func _ready():
	Rps._rps_ready()
	Rps.girl_hand = "R"

func _process(delta):
	Rps._rps_process()
	_gal_hands()
	_gal_state()
	$RPS_UI/compare/girl_hand.frame = 2

func _gal_state():
	match Rps.girl_state:
		#default
		[5, _, "D", _, _]:
			gal_sprite.animation = "D5"
			gal_text.text = "D5_GAL"
			return
		[4, _, "D", _, _]:
			$clothing/GalCloth1.show()
			gal_sprite.animation = "D4"
			gal_text.text = "D4_GAL"
			return
		[3, _, "D", _, _]:
			$clothing/GalCloth2.show()
			gal_sprite.animation = "D3"
			gal_text.text = "D3_GAL"
			return
		[2, _, "D", _, _]:
			$clothing/GalCloth3.show()
			gal_sprite.animation = "D2"
			gal_text.text = "D2_GAL"
			return
		[1, _, "D", _, _]:
			$clothing/GalCloth4.show()
			gal_sprite.animation = "D1"
			gal_text.text = "D1_GAL"
			return
		[0, _, "D", _, _]:
			$clothing/GalCloth5.show()
			gal_sprite.animation = "D0"
			gal_text.text = "D0_GAL"
			return
		#lose
		[5, 3, "L", _, _]:
			gal_sprite.animation = "L5"
			gal_text.text = "L5-3_GAL"
			return
		[5, 2, "L", "M", _]:
			gal_sprite.animation = "L5"
			gal_text.text = "L5-2-M_GAL"
			return
		[5, 2, "L", "F", _]:
			gal_sprite.animation = "L5"
			gal_text.text = "L5-2-F_GAL"
			return
		[5, 1, "L", _, _]:
			gal_sprite.animation = "L5"
			gal_text.text = "L5-1_GAL"
			return
		[5, 0, "L", _, _]:
			gal_sprite.animation = "L5"
			gal_text.text = "L5-0_GAL"
			return
		[4, 3, "L", "M", _]:
			gal_sprite.animation = "L4"
			gal_text.text = "L4-3-M_GAL"
			return
		[4, 3, "L", "F", _]:
			gal_sprite.animation = "L4"
			gal_text.text = "L4-3-F_GAL"
			return
		[4, 2, "L", _, _]:
			gal_sprite.animation = "L4"
			gal_text.text = "L4-2_GAL"
			return
		[4, 1, "L", _, _]:
			gal_sprite.animation = "L4"
			gal_text.text = "L4-1_GAL"
			return
		[4, 0, "L", "M", _]:
			gal_sprite.animation = "L4"
			gal_text.text = "L4-0-M_GAL"
			return
		[4, 0, "L", "F", _]:
			gal_sprite.animation = "L4"
			gal_text.text = "L4-0-F_GAL"
			return
		[3, 3, "L", _, _]:
			gal_sprite.animation = "L3"
			gal_text.text = "L3-3_GAL"
			return
		[3, 2, "L", _, _]:
			gal_sprite.animation = "L3"
			gal_text.text = "L3-2_GAL"
			return
		[3, 1, "L", "M", _]:
			gal_sprite.animation = "L3"
			gal_text.text = "L3-1-M_GAL"
			return
		[3, 1, "L", "F", _]:
			gal_sprite.animation = "L3"
			gal_text.text = "L3-1-F_GAL"
			return
		[3, 0, "L", "M", _]:
			gal_sprite.animation = "L3"
			gal_text.text = "L3-0-M_GAL"
			return
		[3, 0, "L", "F", _]:
			gal_sprite.animation = "L3"
			gal_text.text = "L3-0-F_GAL"
			return
		[2, 3, "L", "M", _]:
			gal_sprite.animation = "L2"
			gal_text.text = "L2-3-M_GAL"
			return
		[2, 3, "L", "F", _]:
			gal_sprite.animation = "L2"
			gal_text.text = "L2-3-F_GAL"
			return
		[2, 2, "L", _, _]:
			gal_sprite.animation = "L2"
			gal_text.text = "L2-2_GAL"
			return
		[2, 1, "L", "M", _]:
			gal_sprite.animation = "L2"
			gal_text.text = "L2-1-M_GAL"
			return
		[2, 1, "L", "F", _]:
			gal_sprite.animation = "L2"
			gal_text.text = "L2-1-F_GAL"
			return
		[2, 0, "L", "M", _]:
			gal_sprite.animation = "L2"
			gal_text.text = "L2-0-M_GAL"
			return
		[2, 0, "L", "F", _]:
			gal_sprite.animation = "L2"
			gal_text.text = "L2-0-F_GAL"
			return
		[1, 3, "L", "M", _]:
			gal_sprite.animation = "L1"
			gal_text.text = "L1-3-M_GAL"
			return
		[1, 3, "L", "F", _]:
			gal_sprite.animation = "L1"
			gal_text.text = "L1-3-F_GAL"
			return
		[1, 2, "L", "M", _]:
			gal_sprite.animation = "L1"
			gal_text.text = "L1-2-M_GAL"
			return
		[1, 2, "L", "F", _]:
			gal_sprite.animation = "L1"
			gal_text.text = "L1-2-F_GAL"
			return
		[1, 1, "L", _, _]:
			gal_sprite.animation = "L1"
			gal_text.text = "L1-1_GAL"
			return
		[1, 0, "L", "M", _]:
			gal_sprite.animation = "L1"
			gal_text.text = "L1-0-M_GAL"
			return
		[1, 0, "L", "F", _]:
			gal_sprite.animation = "L1"
			gal_text.text = "L1-0-F_GAL"
			return
		[0, 3, "L", _, _]:
			gal_sprite.animation = "L0"
			gal_text.text = "L0-3_GAL"
			return
		[0, 2, "L", _, _]:
			gal_sprite.animation = "L0"
			gal_text.text = "L0-2_GAL"
			return
		[0, 1, "L", "M", _]:
			gal_sprite.animation = "L0"
			gal_text.text = "L0-1-M_GAL"
			return
		[0, 1, "L", "F", _]:
			gal_sprite.animation = "L0"
			gal_text.text = "L0-1-F_GAL"
			return
		[0, 0, "L", "M", _]:
			gal_sprite.animation = "L0"
			gal_text.text = "L0-0-M_GAL"
			return
		[0, 0, "L", "F", _]:
			gal_sprite.animation = "L0"
			gal_text.text = "L0-0-F_GAL"
			return
		#Win
		[5, _, "W", _, _]:
			gal_sprite.animation = "W5"
			gal_text.text = "W5_GAL"
			return
		[4, _, "W", _, _]:
			gal_sprite.animation = "W4"
			gal_text.text = "W4_GAL"
			return
		[3, _, "W", _, _]:
			gal_sprite.animation = "W3"
			gal_text.text = "W3_GAL"
			return
		[2, _, "W", _, _]:
			gal_sprite.animation = "W2"
			gal_text.text = "W2_GAL"
			return
		[1, _, "W", _, _]:
			gal_sprite.animation = "W1"
			gal_text.text = "W1_GAL"
			return
		[0, _, "W", _, _]:
			gal_sprite.animation = "W0"
			gal_text.text = "W0_GAL"
			if Rps.cheat_hand < 8:
				Global.gal_win = true
				if Rps.player_score == 4:
					Global.gal_flawless = true
			return
		#strip
		[5, _, "S", _, _]:
			gal_sprite.animation = "S5"
			gal_text.text = "S5_GAL"
			return
		[4, _, "S", _, _]:
			gal_sprite.animation = "S4"
			gal_text.text = "S4_GAL"
			return
		[3, _, "S", _, _]:
			gal_sprite.animation = "S3"
			gal_text.text = "S3_GAL"
			return
		[2, _, "S", _, _]:
			gal_sprite.animation = "S2"
			gal_text.text = "S2_GAL"
			return
		[1, _, "S", _, _]:
			gal_sprite.animation = "S1"
			gal_text.text = "S1_GAL"
			return
		[0, _, "S", "M", _]:
			gal_sprite.animation = "S0"
			gal_text.text = "S0-M_GAL"
			return
		[0, _, "S", "F", _]:
			gal_sprite.animation = "S0"
			gal_text.text = "S0-F_GAL"
			return

func _gal_hands():
	match Rps.girl_state:
		#lose hands
		[5, _, _, _, "L"]:
			Rps.girl_hand = "P"
		[4, _, _, _, "L"]:
			Rps.girl_hand = "R"
		[3, _, _, _, "L"]:
			Rps.girl_hand = "P"
		[2, _, _, _, "L"]:
			Rps.girl_hand = "R"
		[1, _, _, _, "L"]:
			Rps.girl_hand = "P"
		[0, _, _, _, "L"]:
			Rps.girl_hand = "R"
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
			Rps.girl_hand = "P"
		[3, _, _, "M", "W"]:
			Rps.girl_hand = "S"
		[2, _, _, "M", "W"]:
			Rps.girl_hand = "R"
		[1, _, _, "M", "W"]:
			Rps.girl_hand = "S"
		[0, _, _, "M", "W"]:
			Rps.girl_hand = "P"
		[5, _, _, "M", "W"]:
			Rps.girl_hand = "S"
		#win hands for female
		[4, _, _, "F", "W"]:
			Rps.girl_hand = "R"
		[3, _, _, "F", "W"]:
			Rps.girl_hand = "R"
		[2, _, _, "F", "W"]:
			Rps.girl_hand = "R"
		[1, _, _, "F", "W"]:
			Rps.girl_hand = "P"
		[0, _, _, "F", "W"]:
			Rps.girl_hand = "S"
		[0, _, _, "F", "W"]:
			Rps.girl_hand = "P"
