extends Control

@onready var inventory_container = $Panel/Collection

# Function to add an item to the panel
func add_object(texture: Texture):
	var image = TextureRect.new()
	image.texture = texture
	image.custom_minimum_size = Vector2(64, 64) # Adjust size if needed
	inventory_container.add_child(image)
