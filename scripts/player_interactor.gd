extends Area3D

signal focus_changed(interactable: Area3D)
signal interaction_requested(interactable: Area3D)

var _candidates: Array[Area3D] = []
var _focused: Area3D
var _enabled := true


func _ready() -> void:
	area_entered.connect(_on_area_entered)
	area_exited.connect(_on_area_exited)


func _unhandled_input(event: InputEvent) -> void:
	if not _enabled or _focused == null:
		return

	if event.is_action_pressed("interact"):
		interaction_requested.emit(_focused)
		get_viewport().set_input_as_handled()


func set_interaction_enabled(enabled: bool) -> void:
	_enabled = enabled
	if not enabled:
		_set_focused(null)
	else:
		_refresh_focus()


func _on_area_entered(area: Area3D) -> void:
	if _is_interactable(area) and not _candidates.has(area):
		_candidates.append(area)
		_refresh_focus()


func _on_area_exited(area: Area3D) -> void:
	if _is_interactable(area):
		_candidates.erase(area)
		_refresh_focus()


func _refresh_focus() -> void:
	var nearest: Area3D
	var nearest_distance := INF

	for candidate in _candidates:
		if not is_instance_valid(candidate):
			continue
		if not candidate.monitorable or not candidate.visible:
			continue

		var distance := global_position.distance_squared_to(candidate.global_position)
		if distance < nearest_distance:
			nearest = candidate
			nearest_distance = distance

	_set_focused(nearest)


func _set_focused(interactable: Area3D) -> void:
	if _focused == interactable:
		return

	_focused = interactable
	focus_changed.emit(_focused)


func _is_interactable(area: Area3D) -> bool:
	return area.has_method("get_prompt_text") and area.has_method("interact")
