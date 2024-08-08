class_name RequestContainer
extends VBoxContainer


signal save_requested(request_resource: RequestResource)

@onready var navigation: Navigation = %Navigation

@onready var endpoint_content: EndpointContent = %EndpointContent

@onready var response_content: ResponseContent = %ResponseContent

@onready var http_request: HTTPRequest = %HTTPRequest


func get_request_resource() -> RequestResource:
	var request_resource := RequestResource.new()
	request_resource.url = endpoint_content.get_url()
	request_resource.method = endpoint_content.get_method()
	
	return request_resource


func _on_navigation_save_requested() -> void:
	save_requested.emit(get_request_resource())


func _on_endpoint_content_send_pressed() -> void:
	var url := endpoint_content.get_url()
	var method := endpoint_content.get_method()
	
	http_request.request(url, [], method)
	
	navigation.response_button.disabled = true


func _on_http_request_request_completed(result: int, response_code: int, headers: PackedStringArray, body: PackedByteArray) -> void:
	if result != HTTPRequest.Result.RESULT_SUCCESS:
		return endpoint_content.show_result(result)
	
	response_content.set_response(response_code, headers, body)
	navigation.switch_to_content(navigation.response_content)
	
	navigation.response_button.disabled = false
