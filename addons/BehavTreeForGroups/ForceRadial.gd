@icon("Action.svg")
class_name ForceRadial
extends BehavForGroups

@export var center:Vector3
@export var intensity:float = 1.0

func biodyn_process(agent)->bool:
	if agent is RigidBody3D:
		var dv:Vector3 = center - agent.position.normalized()
		agent.apply_central_impulse ( intensity*dv )
		return true

	if agent is RigidBody2D:
		var dv:Vector2 = Vector2(center.x, center.y) - agent.position.normalized()
		agent.apply_central_impulse ( intensity*dv )
		return true

	return false
