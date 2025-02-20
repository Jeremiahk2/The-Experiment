extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/item1_dialogue.dialogue"), "start")
