extends Control

@onready var panel = $Panel
@onready var inventory_container = $Panel/Collection
@onready var showHide = $Panel/ShowHide

@export var test_texture : Texture

var is_visible = false

func _ready():
	showHide.pressed.connect(slide)

# Function to add an item to the panel
func add_object(texture: Texture):
	var container = Control.new()
	container.custom_minimum_size = Vector2(panel.get_global_rect().size.x, panel.get_global_rect().size.x)  # Enforce a 64x64 area

	var image = TextureRect.new()
	image.texture = texture
	image.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED  # Keep aspect ratio

	# Manually scale down large textures
	var max_size = panel.get_global_rect().size.x
	var texture_size = texture.get_size()
	var scale_factor = min(max_size / texture_size.x, max_size / texture_size.y)

	image.scale = Vector2(scale_factor, scale_factor)  # Scale image down

	container.add_child(image)  # Attach image to the container
	inventory_container.add_child(container)  # Add container to inventory
	if not is_visible:
		slide()
	

func _input(event):
	if event is InputEventKey and event.pressed and event.keycode == KEY_G:
		add_object(test_texture)

func slide():
	if (!is_visible):
		is_visible = true
		panel.position.x -= panel.get_global_rect().size.x
	else:
		is_visible = false
		panel.position.x += panel.get_global_rect().size.x
