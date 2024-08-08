class_name Navigation
extends HBoxContainer


signal save_requested

var current_content: Container

@export var endpoint_content: EndpointContent

@export var headers_content: Container

@export var body_content: Container

@export var response_content: ResponseContent

@onready var response_button: Button = %ResponseButton

func _ready() -> void:
	current_content = endpoint_content
	endpoint_content.visible = true
	headers_content.visible = false
	body_content.visible = false
	response_content.visible = false


func switch_to_content(content: Container) -> void:
	current_content.visible = false
	current_content = content
	current_content.visible = true


func _on_endpoint_button_pressed() -> void:
	switch_to_content(endpoint_content)


func _on_headers_button_pressed() -> void:
	switch_to_content(headers_content)


func _on_body_button_pressed() -> void:
	switch_to_content(body_content)


func _on_response_button_pressed() -> void:
	switch_to_content(response_content)


func _on_save_button_pressed() -> void:
	save_requested.emit()
