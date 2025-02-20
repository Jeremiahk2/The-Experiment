extends Node2D

var seline_sprite: Sprite2D
var eryndor_sprite: Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    state.speaker_changed.connect(_change_speaker) # connect speaker change function
    seline_sprite = $SelineMainTransparent
    eryndor_sprite = $EryndorDemoTransparent
    
    # Initially hide both sprites
    seline_sprite.visible = false
    eryndor_sprite.visible = false
    
    # Show the dialogue and update sprite visibility
    DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/item1_dialogue.dialogue"), "start")

# Function to update the visibility of the sprites based on the current speaker
func _update_sprites_visibility(speaker: String) -> void:
    if speaker == "Eryndor":
        eryndor_sprite.visible = true
        seline_sprite.visible = false
    elif speaker == "Seline":
        eryndor_sprite.visible = false
        seline_sprite.visible = true
    else:
        eryndor_sprite.visible = false
        seline_sprite.visible = false

# Function to make appropriate calls when the speaker changes
func _change_speaker(speaker: String) -> void:
    _update_sprites_visibility(speaker)

# Function to handle dialogue changes
func _on_speaker_changed(speaker: String) -> void:
    _update_sprites_visibility(speaker)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass
