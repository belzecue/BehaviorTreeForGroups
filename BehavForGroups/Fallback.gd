@icon("Fallback.svg")
class_name Fallback
extends BehavForGroups

# Called every frame. 'delta' is the elapsed time since the previous frame.
func biodyn_process(agent)->bool:
	# Fallback Node
	# Execute its children, stops when :
	#   a) one succeeded (=> return success)
	#   b) or all failed (=> return failure)
	var overall_success:bool = false
	for behav in self.get_children():
		var success = behav.biodyn_process(agent)
		if success == true:
			return true
	return false
