extends CanvasLayer

# List of scenes to switch between
var scenes = ["res://Scene1.tscn", "res://Scene2.tscn", "res://Scene3.tscn"]
var current_scene_index = 0

func _ready() -> void:
	# Load the first scene
	change_scene(scenes[current_scene_index])

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_select"):  # "ui_select" is mapped to the spacebar by default
		current_scene_index = (current_scene_index + 1) % scenes.size()
		change_scene(scenes[current_scene_index])

func change_scene(scene_path: String) -> void:
	$AnimationPlayer.play('dissolve')
	await $AnimationPlayer.animation_finished
	get_tree().change_scene(scene_path)
	$dissolve_rect/AnimationPlayer.play_backwards('dissolve')
