extends PlayerState
class_name PlayerStateIdle

func enter_state()-> void:
	player.play_direction_anim("idle")
	
func _input(event: InputEvent) -> void:
	if fsm.curr_state != self:
		return
	if event.is_action_pressed("attack"):
		fsm._transition_to("Attack")
		return
	if player.is_moving():
		fsm._transition_to("Walk")
		
