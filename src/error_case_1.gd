extends SceneTree


func _init():
	# Any reference to Foo made before this stops this one from generating the
	# error (see ok_case_1.gd).
	Dynamic.create_script_that_extends_foo_and_instance() # ERROR: Parameter "p_script->implicit_initializer" is null.

	# This stops the next call to create_script_that_extends_foo_and_instance
	# from erroring, if you comment this out the call to
	# create_script_that_extends_foo_and_instance will error.
	Dynamic.create_script_with_auto_resource_path(Dynamic.EXTEND_NODE_USES_FOO_SOURCE)
	Dynamic.create_script_that_extends_foo_and_instance() # OK

	# Creating a dynamic script that extends node_uses_foo.gd and then
	# not doing anything with the result breaks it.  If you assign the results
	# of create_script to a variable then everything after this works fine.
	print("\n-- breaking it")
	Dynamic.create_script(Dynamic.EXTEND_NODE_USES_FOO_SOURCE)


	Dynamic.create_script_that_extends_foo_and_instance() # ERROR: Parameter "p_script->implicit_initializer" is null.
	Dynamic.create_script_that_extends_foo_and_instance() # ERROR: Parameter "p_script->implicit_initializer" is null.

	# Trying to fix it again by creating another script with a resource path.
	# It doesn't seem to have any effect.
	Dynamic.create_script_with_auto_resource_path(Dynamic.EXTEND_NODE_USES_FOO_SOURCE)
	Dynamic.create_script_that_extends_foo_and_instance() # ERROR: Parameter "p_script->implicit_initializer" is null.

	quit()