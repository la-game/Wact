extends MarginContainer


@onready var left_split: HSplitContainer = %LeftSplit

@onready var request_container: RequestContainer = %RequestContainer

@onready var saves_container: SavesContainer = %SavesContainer


func _on_saves_container_dock_pressed(collapsed: bool) -> void:
	if collapsed:
		left_split.dragger_visibility = SplitContainer.DRAGGER_HIDDEN
	else:
		left_split.dragger_visibility = SplitContainer.DRAGGER_VISIBLE


func _on_saves_container_add_pressed() -> void:
	SaveUtility.backup_request(request_container.get_request_resource())


func _on_request_container_save_requested(request_resource: RequestResource) -> void:
	SaveUtility.backup_request(request_resource)
