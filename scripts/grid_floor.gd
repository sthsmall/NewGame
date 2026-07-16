extends Node3D

@export var width := 16.0
@export var depth := 12.0
@export var spacing := 1.0
@export var fine_line_color := Color(0.26, 0.32, 0.33, 1.0)
@export var axis_line_color := Color(0.7, 0.58, 0.36, 1.0)
@export var grid_y := 0.052

var _mesh_instance: MeshInstance3D


func _ready() -> void:
	_build_grid()


func _build_grid() -> void:
	_mesh_instance = MeshInstance3D.new()
	add_child(_mesh_instance)

	var material := StandardMaterial3D.new()
	material.vertex_color_use_as_albedo = true
	material.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	material.transparency = BaseMaterial3D.TRANSPARENCY_DISABLED
	material.depth_draw_mode = BaseMaterial3D.DEPTH_DRAW_OPAQUE_ONLY

	var grid_mesh := ImmediateMesh.new()
	grid_mesh.surface_begin(Mesh.PRIMITIVE_LINES, material)

	var half_width := width * 0.5
	var half_depth := depth * 0.5
	var half_x_lines := int(floor(width / spacing * 0.5))
	var half_z_lines := int(floor(depth / spacing * 0.5))

	for x_index in range(-half_x_lines, half_x_lines + 1):
		var x := x_index * spacing
		grid_mesh.surface_set_color(axis_line_color if x_index == 0 else fine_line_color)
		grid_mesh.surface_add_vertex(Vector3(x, grid_y, -half_depth))
		grid_mesh.surface_add_vertex(Vector3(x, grid_y, half_depth))

	for z_index in range(-half_z_lines, half_z_lines + 1):
		var z := z_index * spacing
		grid_mesh.surface_set_color(axis_line_color if z_index == 0 else fine_line_color)
		grid_mesh.surface_add_vertex(Vector3(-half_width, grid_y, z))
		grid_mesh.surface_add_vertex(Vector3(half_width, grid_y, z))

	grid_mesh.surface_end()
	_mesh_instance.mesh = grid_mesh
