@icon("Parallel.svg")
class_name Parallel
extends BehavForGroups

# Called every frame. 'delta' is the elapsed time since the previous frame.
func biodyn_process(agent)->bool:
	# Parallel Node
	# Execute all its children, stops after ALL children execution
	# Return True when at leat ONE child returns True
	var overall_success:bool = false
	for behav in self.get_children():
		var success = behav.biodyn_process(agent)
		if success == true:
			overall_success = true
	return overall_success
