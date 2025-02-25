extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !state.conduits_dialogue_shown and !%BookOfConduits:
		state.conduits_dialogue_shown = true
		# set the global tome flag to true
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Library.dialogue"), "conduits")
	pass
