class_name SaveUtility
extends RefCounted


static var _saves_dir := "user://requests"

static var _MAX := 1_000_000


static func backup_request(request_resource: RequestResource) -> Error:
	var error = DirAccess.make_dir_recursive_absolute(_saves_dir)
	
	if error != OK:
		return error
	
	var dir_access := DirAccess.open(_saves_dir)
	
	if not dir_access:
		return DirAccess.get_open_error()
	
	for i in _MAX:
		var file_path := "%s/%s.tres" % [_saves_dir, str(i)]
		
		if not dir_access.file_exists(file_path):
			return ResourceSaver.save(request_resource, file_path,ResourceSaver.FLAG_NONE)
	
	return FAILED
