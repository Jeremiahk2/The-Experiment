extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
# TODO: Give player option to keep looking after finding one of the items they need or return right away.
# and then let them choose which item to give to Eryndor once they arrive back at the Lab (BRANCHINGIUNGIDNFIKJBSDFJMNENF)
func _process(delta: float) -> void:
	if !state.moon_crest_dialogue_shown and !%MoonCrestFlower:
		state.moon_crest_dialogue_shown = true
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Garden.dialogue"), "moon_crest")

	if !state.blood_flower_dialogue_shown and !%BloodFlower:
		state.blood_flower_dialogue_shown = true
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Garden.dialogue"), "blood_flower")

	if !state.royal_flower_dialogue_shown and !%RoyalFlower:
		state.royal_flower_dialogue_shown = true
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Garden.dialogue"), "royal_flower")
	pass
