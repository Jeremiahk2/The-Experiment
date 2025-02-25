extends Node

signal change_texture
signal speaker_changed(speaker: String)
signal item_get

var scene_changer = preload("res://Scenes/Utilities/scene_transition.tscn")

@onready var scenes = {
	"Alchemy": preload("res://Scenes/Levels/Alchemy.tscn"),
	"Armory": preload("res://Scenes/Levels/Armory.tscn"),
	"Dungeon": preload("res://Scenes/Levels/Dungeon.tscn"),
	"Garden": preload("res://Scenes/Levels/Garden.tscn"),
	"Hallway": preload("res://Scenes/Levels/Hallway.tscn"),
	"Lab": preload("res://Scenes/Levels/Lab.tscn"),
	"Library": preload("res://Scenes/Levels/Library.tscn"),
	}

#IF REFERENCING FROM DIALOGUE, NEXT LINE MUST BE => END
func change_current_scene(scene: String):
	get_tree().change_scene_to_packed(scenes[scene])
