extends Node
class_name FSM

@export var initial_state: NodePath

var curr_state: State

func _ready() -> void:
	await owner.ready
	for state :State in get_children():
		state.fsm =self
		
curr_state = get_node(initial_state)
curr_state.enter_state()
