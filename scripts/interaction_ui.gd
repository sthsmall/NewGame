extends CanvasLayer

@export var player_path: NodePath
@export var interactor_path: NodePath

var _player: Node
var _interactor: Node
var _active_interactable: Area3D
var _dialogue_open := false

var _prompt_label: Label
var _dialogue_panel: PanelContainer
var _dialogue_label: Label


func _ready() -> void:
	_player = get_node_or_null(player_path)
	_interactor = get_node_or_null(interactor_path)
	_build_ui()

	if _interactor:
		_interactor.focus_changed.connect(_on_focus_changed)
		_interactor.interaction_requested.connect(_on_interaction_requested)


func _unhandled_input(event: InputEvent) -> void:
	if not _dialogue_open:
		return

	if event.is_action_pressed("interact") or event.is_action_pressed("close_dialogue"):
		_close_dialogue()
		get_viewport().set_input_as_handled()


func _build_ui() -> void:
	_prompt_label = Label.new()
	_prompt_label.visible = false
	_prompt_label.text = ""
	_prompt_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	_prompt_label.add_theme_color_override("font_color", Color(1.0, 0.94, 0.82))
	_prompt_label.add_theme_color_override("font_shadow_color", Color(0.0, 0.0, 0.0, 0.75))
	_prompt_label.add_theme_constant_override("shadow_offset_x", 1)
	_prompt_label.add_theme_constant_override("shadow_offset_y", 1)
	_prompt_label.anchor_left = 0.5
	_prompt_label.anchor_right = 0.5
	_prompt_label.anchor_top = 0.72
	_prompt_label.anchor_bottom = 0.72
	_prompt_label.offset_left = -180.0
	_prompt_label.offset_right = 180.0
	_prompt_label.offset_top = 0.0
	_prompt_label.offset_bottom = 36.0
	add_child(_prompt_label)

	_dialogue_panel = PanelContainer.new()
	_dialogue_panel.visible = false
	_dialogue_panel.anchor_left = 0.18
	_dialogue_panel.anchor_right = 0.82
	_dialogue_panel.anchor_top = 0.76
	_dialogue_panel.anchor_bottom = 0.96
	_dialogue_panel.offset_left = 0.0
	_dialogue_panel.offset_right = 0.0
	_dialogue_panel.offset_top = 0.0
	_dialogue_panel.offset_bottom = 0.0
	add_child(_dialogue_panel)

	var margin := MarginContainer.new()
	margin.add_theme_constant_override("margin_left", 18)
	margin.add_theme_constant_override("margin_right", 18)
	margin.add_theme_constant_override("margin_top", 14)
	margin.add_theme_constant_override("margin_bottom", 14)
	_dialogue_panel.add_child(margin)

	_dialogue_label = Label.new()
	_dialogue_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	_dialogue_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	margin.add_child(_dialogue_label)


func _on_focus_changed(interactable: Area3D) -> void:
	_active_interactable = interactable
	if _dialogue_open:
		return

	if interactable and interactable.has_method("get_prompt_text"):
		_prompt_label.text = "E  " + interactable.get_prompt_text()
		_prompt_label.visible = true
	else:
		_prompt_label.visible = false


func _on_interaction_requested(interactable: Area3D) -> void:
	if interactable == null or not interactable.has_method("interact"):
		return

	_dialogue_open = true
	_prompt_label.visible = false
	_dialogue_label.text = interactable.interact()
	_dialogue_panel.visible = true
	_set_player_locked(true)
	if _interactor and _interactor.has_method("set_interaction_enabled"):
		_interactor.set_interaction_enabled(false)


func _close_dialogue() -> void:
	_dialogue_open = false
	_dialogue_panel.visible = false
	_set_player_locked(false)
	if _interactor and _interactor.has_method("set_interaction_enabled"):
		_interactor.set_interaction_enabled(true)
	_on_focus_changed(_active_interactable)


func _set_player_locked(locked: bool) -> void:
	if _player and _player.has_method("set_controls_locked"):
		_player.set_controls_locked(locked)
