extends Node

signal change_texture
signal speaker_changed(speaker: String)

# global variables for keeping track of the game state
var first_visit = true
var visit_count = 0

# global variables for dialogues shown
# library
var conduits_dialogue_shown = false
var griffin_dialogue_shown = false
# alchemy
var vitality_dialogue_shown = false
var basilisk_dialogue_shown = false
var alchemy_complete_dialogue_shown = false
# garden
var moon_crest_dialogue_shown = false
var blood_flower_dialogue_shown = false
var royal_flower_dialogue_shown = false
# treasury
var emerald_catontia_dialogue_shown = false
var golden_apple_dialogue_shown = false
var heart_stone_dialogue_shown = false
var treasury_complete_dialogue_shown = false

# global variables for keeping track of which items have been collected
# library
var found_tome_of_conduits = false
var found_griffin_feather = false
# alchemy
var found_vitality_potion = false
var found_basilisk_venom = false
# garden
var found_moon_crest_flower = false
var found_blood_flower = false
var found_royal_flower = false
# treasury
var found_emerald_of_catontia = false
var found_golden_apple = false
var found_heart_stone = false

# global variables for items used in artifact (for branching endings)
var used_tome_of_conduits = false
var used_griffin_feather = false
var used_moon_crest_flower = false
var used_blood_flower = false
var used_royal_flower = false

var scene_changer = preload("res://Scenes/Utilities/scene_transition.tscn")

@onready var scenes = {
	"Alchemy": preload("res://Scenes/Levels/Alchemy.tscn"),
	"Garden": preload("res://Scenes/Levels/Garden.tscn"),
	"Laboratory": preload("res://Scenes/Levels/Laboratory.tscn"),
	"Library": preload("res://Scenes/Levels/Library.tscn"),
	"Treasury": preload("res://Scenes/Levels/Treasury.tscn"),
	"MainMenu": preload("res://Scenes/Menus/MainMenu.tscn"),
	}

#IF REFERENCING FROM DIALOGUE, NEXT LINE MUST BE => END
func change_current_scene(scene: String):
	get_tree().change_scene_to_packed(scenes[scene])

# setter for tome of conduits flag
func set_tome_flag(tome: bool) -> void:
	found_tome_of_conduits = tome
	print("Tome of Conduits: ", found_tome_of_conduits)

# setter for vitality potion flag
func set_vitality_flag(potion: bool) -> void:
	found_vitality_potion = potion
	print("Vitality Potion: ", found_vitality_potion)

# setter for basilisk venom flag
func set_basilisk_flag(venom: bool) -> void:
	found_basilisk_venom = venom
	print("Basilisk Venom: ", found_basilisk_venom)

# setter for blood flower flag
func set_blood_flower_flag(blood_flower: bool) -> void:
	found_blood_flower = blood_flower
	print("Blood Flower: ", found_blood_flower)

# setter for royal flower flag
func set_royal_flower_flag(royal_flower: bool) -> void:
	found_royal_flower = royal_flower
	print("Royal Flower: ", found_royal_flower)

# setter for moon crest flower flag
func set_moon_crest_flag(moon_crest: bool) -> void:
	found_moon_crest_flower = moon_crest
	print("Moon Crest Flower: ", found_moon_crest_flower)

# setter for emerald of catontia flag
func set_emerald_flag(emerald: bool) -> void:
	found_emerald_of_catontia = emerald
	print("Emerald of Catontia: ", found_emerald_of_catontia)
# setter for golden apple flag
func set_golden_apple_flag(apple: bool) -> void:
	found_golden_apple = apple
	print("Golden Apple: ", found_golden_apple)
# setter for heart stone flag
func set_heart_stone_flag(heart_stone: bool) -> void:
	found_heart_stone = heart_stone
	print("Heart Stone: ", found_heart_stone)

# setter for griffin feather flag
func set_griffin_flag(feather: bool) -> void:
	found_griffin_feather = feather
	print("Griffin Feather: ", found_griffin_feather)

func set_used_tome_flag(tome: bool) -> void:
	used_tome_of_conduits = tome
	print("Used Tome of Conduits: ", used_tome_of_conduits)

func set_used_griffin_flag(feather: bool) -> void:
	used_griffin_feather = feather
	print("Used Griffin Feather: ", used_griffin_feather)

func set_used_moon_crest_flag(moon_crest: bool) -> void:	
	used_moon_crest_flower = moon_crest
	print("Used Moon Crest Flower: ", used_moon_crest_flower)

func set_used_blood_flower_flag(blood_flower: bool) -> void:
	used_blood_flower = blood_flower
	print("Used Blood Flower: ", used_blood_flower)

func set_used_royal_flower_flag(royal_flower: bool) -> void:
	used_royal_flower = royal_flower
	print("Used Royal Flower: ", used_royal_flower)

func resetGame() -> void:
	# Reset all global variables
	first_visit = true
	visit_count = 0

	conduits_dialogue_shown = false
	griffin_dialogue_shown = false
	vitality_dialogue_shown = false
	basilisk_dialogue_shown = false
	alchemy_complete_dialogue_shown = false
	moon_crest_dialogue_shown = false
	blood_flower_dialogue_shown = false
	royal_flower_dialogue_shown = false
	emerald_catontia_dialogue_shown = false
	golden_apple_dialogue_shown = false
	heart_stone_dialogue_shown = false
	treasury_complete_dialogue_shown = false

	found_tome_of_conduits = false
	found_griffin_feather = false
	found_vitality_potion = false
	found_basilisk_venom = false
	found_moon_crest_flower = false
	found_blood_flower = false
	found_royal_flower = false
	found_emerald_of_catontia = false
	found_golden_apple = false
	found_heart_stone = false

	used_tome_of_conduits = false
	used_griffin_feather = false
	used_moon_crest_flower = false
	used_blood_flower = false
	used_royal_flower = false

	# Change to the main menu scene
	change_current_scene("MainMenu")
