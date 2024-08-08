class_name EndpointContent
extends VBoxContainer


signal send_pressed

@onready var method_button: OptionButton = %MethodButton

@onready var url_edit: LineEdit = %URLEdit

@onready var result_button: Button = %ResultButton


func _ready() -> void:
	result_button.visible = false


func get_method() -> HTTPClient.Method:
	# The options ID mirror the Method enum.
	return method_button.get_selected_id() as HTTPClient.Method


func get_url() -> String:
	return url_edit.text


func show_result(result: int) -> void:
	result_button.text = HTTPUtility.result_to_str(result)
	result_button.visible = true


func _on_send_button_pressed() -> void:
	send_pressed.emit()
	result_button.visible = false
