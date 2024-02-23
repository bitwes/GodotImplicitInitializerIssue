extends SceneTree

func _init():
	# Without this line, then the next call to create_script will error
	# with the "p_script->implicit_initializer" error.  With this here, the
	# rest of this script works without error
	Dynamic.create_script_with_auto_resource_path(Dynamic.EXTEND_NODE_USES_FOO_SOURCE)

	# If you remove the assignment on this line, then the next two calls
	# Dynamic.create_script_that_extends_foo_and_instance() will cause
	# "p_script->implicit_initializer" errors.
	var NewScript = Dynamic.create_script(Dynamic.EXTEND_NODE_USES_FOO_SOURCE)

	# OK
	Dynamic.create_script_that_extends_foo_and_instance()
	# OK
	Dynamic.create_script_that_extends_foo_and_instance()

	quit()
