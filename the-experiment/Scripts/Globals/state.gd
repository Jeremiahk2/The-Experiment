extends Node

signal change_texture
signal speaker_changed(speaker: String)

# global variables for keeping track of the game state
var first_visit = true
var visit_count = 0

# global variables for dialogues shown
var conduits_dialogue_shown = false
var vitality_dialogue_shown = false
var basilisk_dialogue_shown = false

# global variables for keeping track of which items have been collected
var found_tome_of_conduits = false
var found_moon_crest_flower = false
var found_vitality_potion = false
var found_basilisk_venom = false

var scene_changer = preload("res://Scenes/Utilities/scene_transition.tscn")

@onready var scenes = {
	"Alchemy": preload("res://Scenes/Levels/Alchemy.tscn"),
	"Garden": preload("res://Scenes/Levels/Garden.tscn"),
	"Laboratory": preload("res://Scenes/Levels/Laboratory.tscn"),
	"Library": preload("res://Scenes/Levels/Library.tscn"),
	}

#IF REFERENCING FROM DIALOGUE, NEXT LINE MUST BE => END
func change_current_scene(scene: String):
	get_tree().change_scene_to_packed(scenes[scene])

# setter for moon crest flag
func set_moon_crest_flag(lotus: bool) -> void:
	found_moon_crest_flower = lotus

# setter for tome of conduits flag
func set_tome_flag(tome: bool) -> void:
	found_tome_of_conduits = tome

# setter for vitality potion flag
func set_vitality_flag(potion: bool) -> void:
	found_vitality_potion = potion

# setter for basilisk venom flag
func set_basilisk_flag(venom: bool) -> void:
	found_basilisk_venom = venom