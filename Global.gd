extends Node

var VP = Vector2.ZERO

var score = 0
var time = 100
var lives = 5


func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	randomize()
	VP = get_viewport().size
	var _signal = get_tree().get_root().connect("size_changed", self, "resize")

func _resize():
	VP = get_viewport().size
	
func reset():
	score = 0
	time = 100
	lives = 5
