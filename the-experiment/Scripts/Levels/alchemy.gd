extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !state.basilisk_dialogue_shown and !%BasiliskVenom:
		state.basilisk_dialogue_shown = true
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Alchemy.dialogue"), "basilisk")

	if !state.vitality_dialogue_shown and !%VitalityPotion:
		state.vitality_dialogue_shown = true
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Alchemy.dialogue"), "vitality")

	if !state.alchemy_complete_dialogue_shown and state.found_basilisk_venom and state.found_vitality_potion:
		state.alchemy_complete_dialogue_shown = true
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Alchemy.dialogue"), "complete")
	pass
