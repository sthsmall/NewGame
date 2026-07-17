class_name Interactable
extends Area3D

@export var prompt_text := "调查"
@export_multiline var message := "这里还没有内容。"
@export var disable_after_interact := false


func get_prompt_text() -> String:
	return prompt_text


func interact() -> String:
	if disable_after_interact:
		call_deferred("_disable_interactable")
	return message


func _disable_interactable() -> void:
	monitoring = false
	monitorable = false
	visible = false
