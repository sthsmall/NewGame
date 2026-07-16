extends Camera3D

@export var target_path: NodePath = ^"../Player"
@export var follow_speed := 8.0
@export var look_at_height := 0.6

var _target: Node3D
var _offset := Vector3.ZERO


func _ready() -> void:
	_target = get_node_or_null(target_path) as Node3D
	if _target == null:
		push_warning("Camera follow target not found: %s" % target_path)
		return

	_offset = global_position - _target.global_position
	_look_at_target()


func _physics_process(delta: float) -> void:
	if _target == null:
		return

	var target_position := _target.global_position + _offset
	global_position = global_position.lerp(target_position, 1.0 - exp(-follow_speed * delta))
	_look_at_target()


func _look_at_target() -> void:
	var focus := _target.global_position + Vector3.UP * look_at_height
	look_at(focus, Vector3.UP)
