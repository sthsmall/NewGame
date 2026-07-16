extends CharacterBody3D

@export var move_speed := 4.0
@export var acceleration := 14.0
@export var friction := 18.0

var _gravity := float(ProjectSettings.get_setting("physics/3d/default_gravity"))


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y -= _gravity * delta
	else:
		velocity.y = 0.0

	var input_vector := Input.get_vector(
		"move_left",
		"move_right",
		"move_forward",
		"move_back"
	)
	var direction := Vector3(input_vector.x, 0.0, input_vector.y)

	if direction.length_squared() > 0.0:
		velocity.x = move_toward(velocity.x, direction.x * move_speed, acceleration * delta)
		velocity.z = move_toward(velocity.z, direction.z * move_speed, acceleration * delta)
	else:
		velocity.x = move_toward(velocity.x, 0.0, friction * delta)
		velocity.z = move_toward(velocity.z, 0.0, friction * delta)

	move_and_slide()
