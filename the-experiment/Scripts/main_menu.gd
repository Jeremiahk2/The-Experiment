extends Control

@onready var start_button = $Start
@onready var quit_button = $Quit
var startingScene = preload("res://Scenes/intro_scene.tscn")

func _ready():
	start_button.pressed.connect(_on_start_pressed)
	quit_button.pressed.connect(_on_quit_pressed)

func _on_start_pressed():
	get_tree().change_scene_to_packed(startingScene)

func _on_quit_pressed():
	get_tree().quit()
