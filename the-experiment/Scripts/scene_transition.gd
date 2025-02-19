extends CanvasLayer

# List of scenes to switch between
var scenes = [preload("res://Scenes/scene1.tscn"), preload("res://Scenes/scene2.tscn"), preload("res://Scenes/scene3.tscn")]
var current_scene_index = 0

func _ready() -> void:
	# Load the first scene
	print("scene_transition ready")

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_select"):  # "ui_select" is mapped to the spacebar by default
		current_scene_index = (current_scene_index + 1) % scenes.size()
		change_scene(scenes[current_scene_index])

func change_scene(scene_path: Resource) -> void:
	$dissolve_rect/AnimationPlayer.play('dissolve')
	await $dissolve_rect/AnimationPlayer.animation_finished
	get_tree().change_scene_to_packed(scene_path)
	$dissolve_rect/AnimationPlayer.play_backwards('dissolve')
