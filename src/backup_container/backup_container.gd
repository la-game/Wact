class_name SavesContainer
extends VBoxContainer


signal dock_pressed(collapsed: bool)

signal add_pressed

@onready var saves_tree: Tree = %SavesTree

var _collapsed: bool = true

var _cached_size: Vector2


func _ready() -> void:
	var root = saves_tree.create_item()
	var c1 = saves_tree.create_item(root)
	var c2 = saves_tree.create_item(root)
	var c3 = saves_tree.create_item(c1)
	
	c1.set_text(0, "c1")
	c2.set_text(0, "c2")
	c3.set_text(0, "c3")
	c1


func _on_dock_button_pressed() -> void:
	if _collapsed:
		custom_minimum_size = Vector2(170, 0)
		size = _cached_size
		saves_tree.visible = true
	else:
		_cached_size = size
		custom_minimum_size = Vector2(0, 0)
		saves_tree.visible = false
	
	_collapsed = not _collapsed
	dock_pressed.emit(_collapsed)


func _on_add_button_pressed() -> void:
	add_pressed.emit()
