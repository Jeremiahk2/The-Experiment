extends Node



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	state.item_get.connect(updateInventory)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func updateInventory()  -> void:
	if %EmeraldOfCatontia:
		print("Emerald has not been found yet")
	else:
		print("Emerald has been found!")
