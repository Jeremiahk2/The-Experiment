extends CanvasLayer

@onready var characters = {"Seline": $SelineMainTransparent, "Eryndor": $EryndorDemoTransparent}
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	state.speaker_changed.connect(_change_speaker) # connect speaker change function
	# Initially hide all sprites
	for sprite in characters:
		characters[sprite].visible = false
# Function to update the visibility of the sprites based on the current speaker
func _update_sprites_visibility(speaker: String) -> void:
	for sprite in characters:
		if (sprite == speaker):
			characters[sprite].visible = true
		else:
			characters[sprite].visible = false
# Function to make appropriate calls when the speaker changes
func _change_speaker(speaker: String) -> void:
	_update_sprites_visibility(speaker)

# Function to handle dialogue changes
func _on_speaker_changed(speaker: String) -> void:
	_update_sprites_visibility(speaker)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
