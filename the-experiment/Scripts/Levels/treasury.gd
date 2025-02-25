extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !state.emerald_catontia_dialogue_shown and !%EmeraldOfCatontia:
		state.emerald_catontia_dialogue_shown = true
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Treasury.dialogue"), "emerald_catontia")

	if !state.golden_apple_dialogue_shown and !%GoldenApple:
		state.golden_apple_dialogue_shown = true
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Treasury.dialogue"), "golden_apple")

	if !state.heart_stone_dialogue_shown and !%TheHeartStone:
		state.heart_stone_dialogue_shown = true
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Treasury.dialogue"), "heart_stone")
	pass
