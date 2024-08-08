class_name ResponseContent
extends VBoxContainer


@export var code_label: Label

@export var summary_label: Label

@export var headers_edit: TextEdit

@export var body_edit: TextEdit

var cached_body: PackedByteArray


func _ready() -> void:
	var highlighter = CodeHighlighter.new()
	highlighter.add_color_region(":", "", Color.DARK_GRAY, true)
	headers_edit.syntax_highlighter = highlighter


func set_response(code: int, headers: PackedStringArray, body: PackedByteArray) -> void:
	cached_body = body
	code_label.text = str(code)
	summary_label.text = HTTPUtility.code_to_str(code)
	headers_edit.text = "\n".join(headers)
	body_edit.text = body.get_string_from_ascii()
