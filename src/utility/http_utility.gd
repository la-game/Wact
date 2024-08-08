class_name HTTPUtility
extends RefCounted

static func result_to_str(result: int) -> String:
	match result:
		HTTPRequest.Result.RESULT_SUCCESS:
			return "Success"
		HTTPRequest.Result.RESULT_CHUNKED_BODY_SIZE_MISMATCH:
			return "Chunked Body Size Mismatch"
		HTTPRequest.Result.RESULT_CANT_RESOLVE:
			return "Cant Resolve"
		HTTPRequest.Result.RESULT_CONNECTION_ERROR:
			return "Connection Error"
		HTTPRequest.Result.RESULT_TLS_HANDSHAKE_ERROR:
			return "Tls Handshake Error"
		HTTPRequest.Result.RESULT_NO_RESPONSE:
			return "No Response"
		HTTPRequest.Result.RESULT_BODY_SIZE_LIMIT_EXCEEDED:
			return "Body Size_limit Exceeded"
		HTTPRequest.Result.RESULT_BODY_DECOMPRESS_FAILED:
			return "Body Decompress Failed"
		HTTPRequest.Result.RESULT_DOWNLOAD_FILE_CANT_OPEN :
			return "Download File Cant Open"
		HTTPRequest.Result.RESULT_DOWNLOAD_FILE_WRITE_ERROR :
			return "Download File Write Error"
		HTTPRequest.Result.RESULT_REDIRECT_LIMIT_REACHED :
			return "Redirect Limit Reached"
		HTTPRequest.Result.RESULT_TIMEOUT :
			return "Timeout"
	return "Unknown"

static func code_to_str(code: int) -> String:
	match code:
		# 100
		HTTPClient.ResponseCode.RESPONSE_CONTINUE:
			return "Continue"
		HTTPClient.ResponseCode.RESPONSE_SWITCHING_PROTOCOLS:
			return "Switching Protocols"
		HTTPClient.ResponseCode.RESPONSE_PROCESSING:
			return "Processing"
		103:
			return "Early Hints"
		
		# 200
		HTTPClient.ResponseCode.RESPONSE_OK:
			return "Ok"
		HTTPClient.ResponseCode.RESPONSE_CREATED:
			return "Created"
		HTTPClient.ResponseCode.RESPONSE_ACCEPTED:
			return "Accepted"
		HTTPClient.ResponseCode.RESPONSE_NON_AUTHORITATIVE_INFORMATION:
			return "Non Authoritative Information"
		HTTPClient.ResponseCode.RESPONSE_NO_CONTENT:
			return "No Content"
		HTTPClient.ResponseCode.RESPONSE_RESET_CONTENT:
			return "Reset Content"
		HTTPClient.ResponseCode.RESPONSE_PARTIAL_CONTENT:
			return "Partial Content"
		HTTPClient.ResponseCode.RESPONSE_MULTI_STATUS:
			return "Multi Status"
		HTTPClient.ResponseCode.RESPONSE_ALREADY_REPORTED:
			return "Already Reported"
		HTTPClient.ResponseCode.RESPONSE_IM_USED:
			return "Im Used"
		
		# 300
		HTTPClient.ResponseCode.RESPONSE_MULTIPLE_CHOICES:
			return "Multiple Choices"
		HTTPClient.ResponseCode.RESPONSE_MOVED_PERMANENTLY:
			return "Moved Permanently"
		HTTPClient.ResponseCode.RESPONSE_FOUND:
			return "Found"
		HTTPClient.ResponseCode.RESPONSE_SEE_OTHER:
			return "See Other"
		HTTPClient.ResponseCode.RESPONSE_NOT_MODIFIED:
			return "Not Modified"
		HTTPClient.ResponseCode.RESPONSE_USE_PROXY:
			return "Use Proxy"
		HTTPClient.ResponseCode.RESPONSE_SWITCH_PROXY:
			return "Switch Proxy"
		HTTPClient.ResponseCode.RESPONSE_TEMPORARY_REDIRECT:
			return "Temporary Redirect"
		HTTPClient.ResponseCode.RESPONSE_PERMANENT_REDIRECT:
			return "Permanent Redirect"
		
		# 400
		HTTPClient.ResponseCode.RESPONSE_BAD_REQUEST:
			return "Bad Request"
		HTTPClient.ResponseCode.RESPONSE_UNAUTHORIZED:
			return "Unauthorized"
		HTTPClient.ResponseCode.RESPONSE_PAYMENT_REQUIRED:
			return "Payment Required"
		HTTPClient.ResponseCode.RESPONSE_FORBIDDEN:
			return "Forbidden"
		HTTPClient.ResponseCode.RESPONSE_NOT_FOUND:
			return "Not Found"
		HTTPClient.ResponseCode.RESPONSE_METHOD_NOT_ALLOWED:
			return "Method Not Allowed"
		HTTPClient.ResponseCode.RESPONSE_NOT_ACCEPTABLE:
			return "Not Acceptable"
		HTTPClient.ResponseCode.RESPONSE_PROXY_AUTHENTICATION_REQUIRED:
			return "Proxy Authentication Required"
		HTTPClient.ResponseCode.RESPONSE_REQUEST_TIMEOUT:
			return "Request Timeout"
		HTTPClient.ResponseCode.RESPONSE_CONFLICT:
			return "Conflict"
		HTTPClient.ResponseCode.RESPONSE_GONE:
			return "Gone"
		HTTPClient.ResponseCode.RESPONSE_LENGTH_REQUIRED:
			return "Length Required"
		HTTPClient.ResponseCode.RESPONSE_PRECONDITION_FAILED:
			return "Precondition Failed"
		HTTPClient.ResponseCode.RESPONSE_REQUEST_ENTITY_TOO_LARGE:
			return "Request Entity Too Large"
		HTTPClient.ResponseCode.RESPONSE_REQUEST_URI_TOO_LONG:
			return "Request Uri Too Long"
		HTTPClient.ResponseCode.RESPONSE_UNSUPPORTED_MEDIA_TYPE:
			return "Unsupported Media Type"
		HTTPClient.ResponseCode.RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE:
			return "Requested Range Not Satisfiable"
		HTTPClient.ResponseCode.RESPONSE_EXPECTATION_FAILED:
			return "Expectation Failed"
		HTTPClient.ResponseCode.RESPONSE_IM_A_TEAPOT:
			return "Im A Teapot"
		HTTPClient.ResponseCode.RESPONSE_MISDIRECTED_REQUEST:
			return "Misdirected Request"
		HTTPClient.ResponseCode.RESPONSE_UNPROCESSABLE_ENTITY:
			return "Unprocessable Entity"
		HTTPClient.ResponseCode.RESPONSE_LOCKED:
			return "Locked"
		HTTPClient.ResponseCode.RESPONSE_FAILED_DEPENDENCY:
			return "Failed Dependency"
		425:
			return "Too Early"
		HTTPClient.ResponseCode.RESPONSE_UPGRADE_REQUIRED:
			return "Upgrade Required"
		HTTPClient.ResponseCode.RESPONSE_PRECONDITION_REQUIRED:
			return "Precondition Required"
		HTTPClient.ResponseCode.RESPONSE_TOO_MANY_REQUESTS:
			return "Too Many Requests"
		HTTPClient.ResponseCode.RESPONSE_REQUEST_HEADER_FIELDS_TOO_LARGE:
			return "Request Header Fields Too Large"
		HTTPClient.ResponseCode.RESPONSE_UNAVAILABLE_FOR_LEGAL_REASONS:
			return "Unavailable For Legal Reasons"
		
		# 500
		HTTPClient.ResponseCode.RESPONSE_INTERNAL_SERVER_ERROR:
			return "Internal Server Error"
		HTTPClient.ResponseCode.RESPONSE_NOT_IMPLEMENTED:
			return "Not Implemented"
		HTTPClient.ResponseCode.RESPONSE_BAD_GATEWAY:
			return "Bad Gateway"
		HTTPClient.ResponseCode.RESPONSE_SERVICE_UNAVAILABLE:
			return "Service Unavailable"
		HTTPClient.ResponseCode.RESPONSE_GATEWAY_TIMEOUT:
			return "Gateway Timeout"
		HTTPClient.ResponseCode.RESPONSE_HTTP_VERSION_NOT_SUPPORTED:
			return "Http Version Not Supported"
		HTTPClient.ResponseCode.RESPONSE_VARIANT_ALSO_NEGOTIATES:
			return "Variant Also Negotiates"
		HTTPClient.ResponseCode.RESPONSE_INSUFFICIENT_STORAGE:
			return "Insufficient Storage"
		HTTPClient.ResponseCode.RESPONSE_LOOP_DETECTED:
			return "Loop Detected"
		HTTPClient.ResponseCode.RESPONSE_NOT_EXTENDED:
			return "Not Extended"
		HTTPClient.ResponseCode.RESPONSE_NETWORK_AUTH_REQUIRED:
			return "Network Auth Required"
	return "Invalid Code"
