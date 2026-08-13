extends State
class_name PlayerState

var player:Player

func _ready()-> void:
	if owner:
		await owner.ready
	player= owner as Player
