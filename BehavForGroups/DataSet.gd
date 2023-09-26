@icon("Action.svg")
class_name DataSet
extends BehavForGroups

@export var data_name:String = ""
@export var set_to_value:float = 0

func biodyn_process(agent:Node)->bool:
	if data_name != "":
		if agent.has_meta(data_name):
			agent.set_meta(data_name, set_to_value)
	return true
