class_name Dynamic

const EXTEND_NODE_USES_FOO_SOURCE = "extends 'res://src/node_uses_foo.gd'"
const EXTEND_FOO_PATH_SOURCE = "extends 'res://src/foo.gd'"
const EXTEND_FOO_CLASS_NAME_SOURCE = "extends Foo"
static var rpath_count = 0


static func create_script(source, resourece_path=null):
	var r_path = ''
	if(resourece_path != null):
		r_path = resourece_path

	var DynamicScript = GDScript.new()
	DynamicScript.source_code = source
	DynamicScript.resource_path = r_path
	DynamicScript.reload()

	return DynamicScript


static func create_script_with_auto_resource_path(source):
	print("\n-- create_script_with_auto_resource_path")
	var rpath = str('unique_resource_path_', rpath_count)
	rpath_count += 1
	return create_script(source, rpath)


static func create_script_extends_class(class_ref):
	var path = class_ref.resource_path
	var src = str("extends '", path, "'")
	return create_script(src)


static func create_sript_extends_class_name(class_name_str):
	var src = str("extends '", class_name_str, "'")
	return create_script(src)


static func create_script_that_extends_foo_and_instance():
	print("\n", '-- create_script_that_extends_foo_and_instance')

	var extended = create_script(EXTEND_FOO_PATH_SOURCE)
	print('extended = ', extended)

	var extended_inst = extended.new()
	print('extended = ', extended_inst)


# When the resoure path is '' and we do nothing with the result of
# create_script, then the next dynamic Foo we try to create will
# cause errors.
static func this_breaks_it():
	print("\n", '-- this_breaks_it')
	return create_script(EXTEND_NODE_USES_FOO_SOURCE)
