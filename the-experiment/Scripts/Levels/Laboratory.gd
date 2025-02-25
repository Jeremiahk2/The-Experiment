extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    if state.first_visit:
        DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Laboratory.dialogue"), "welcome")
        state.first_visit = false
    else:
        state.visit_count += 1
        match state.visit_count:
			# Player either gets Moon Crest Flower or Tome of Conduits
            1:
                if state.found_tome_of_conduits:
                    DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Laboratory.dialogue"), "tome_dialogue")
                elif state.found_moon_crest_flower:
                    DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Laboratory.dialogue"), "moon_dialogue")
			# Player has gotten the basilisk venom and Potion of Vitality
            2:
                DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Laboratory.dialogue"), "return_2")
            _:
                DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Laboratory.dialogue"), "return_default")
            # 4:
            #     DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Laboratory.dialogue"), "return_default")
            # 5:
            #     DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Laboratory.dialogue"), "return_default")
            # 6:
            #     DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Laboratory.dialogue"), "return_default")
            # 7:
            #     DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Laboratory.dialogue"), "return_default")
            # _:
            #     DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Level_Dialogue/Laboratory.dialogue"), "return_default")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass

