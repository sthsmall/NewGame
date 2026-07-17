extends CharacterBody3D

@export var move_speed := 4.0
@export var acceleration := 14.0
@export var friction := 18.0

var _controls_locked := false
var _gravity := float(ProjectSettings.get_setting("physics/3d/default_gravity"))
@onready var _sprite: AnimatedSprite3D = $AnimatedSprite3D


func set_controls_locked(locked: bool) -> void:
	_controls_locked = locked
	if locked:
		velocity.x = 0.0
		velocity.z = 0.0
		_update_sprite(Vector3.ZERO, false)


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y -= _gravity * delta
	else:
		velocity.y = 0.0

	var input_vector := Vector2.ZERO
	if not _controls_locked:
		input_vector = Input.get_vector(
			"move_left",
			"move_right",
			"move_forward",
			"move_back"
		)

	var direction := Vector3(input_vector.x, 0.0, input_vector.y)
	var is_moving := direction.length_squared() > 0.0

	if is_moving:
		velocity.x = move_toward(velocity.x, direction.x * move_speed, acceleration * delta)
		velocity.z = move_toward(velocity.z, direction.z * move_speed, acceleration * delta)
	else:
		velocity.x = move_toward(velocity.x, 0.0, friction * delta)
		velocity.z = move_toward(velocity.z, 0.0, friction * delta)

	_update_sprite(direction, is_moving)
	move_and_slide()


func _update_sprite(direction: Vector3, is_moving: bool) -> void:
	var target_animation := &"walk" if is_moving else &"idle"
	if _sprite.animation != target_animation:
		_sprite.play(target_animation)

	if not is_zero_approx(direction.x):
		_sprite.flip_h = direction.x < 0.0
