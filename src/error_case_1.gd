extends SceneTree


func _init():
	# Any reference to Foo made before this stops this one from
	# generating the error (see case_2.gd).
	# ERROR: Parameter "p_script->implicit_initializer" is null.
	Dynamic.make_extend_foo_from_source()

	# This stops the next call to make_extend_foo_from_source from erroring, if
	# you comment this out the make_extend_foo_from_source will error.
	Dynamic.create_script_with_auto_resource_path(Dynamic.EXTEND_NODE_USES_FOO_SOURCE)
	Dynamic.make_extend_foo_from_source() # OK

	# Creating a dynamic script that extends node_uses_foo.gd and then
	# not doing anything with the result breaks it.
	print("\n-- breaking it")
	Dynamic.create_script(Dynamic.EXTEND_NODE_USES_FOO_SOURCE)

	# ERROR: Parameter "p_script->implicit_initializer" is null.
	Dynamic.make_extend_foo_from_source()
	# ERROR: Parameter "p_script->implicit_initializer" is null.
	Dynamic.make_extend_foo_from_source()

	# Trying
	Dynamic.create_script_with_auto_resource_path(Dynamic.EXTEND_NODE_USES_FOO_SOURCE)
	Dynamic.make_extend_foo_from_source()

	quit()