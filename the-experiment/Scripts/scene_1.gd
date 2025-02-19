extends Node2D

@onready var sprite = $CanvasLayer/Nprofile2  # Get reference to the character
@export var sasuke: Texture  # SET THIS IN THE INSPECTOR TRIP ->

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	state.change_texture.connect(changeTexture)
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/main.dialogue"), "start")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func changeTexture() -> void:
	print("here");
	if sprite and sasuke:
		sprite.texture = sasuke
