extends SceneTree

# Illustrate that there are no errors if you make reference to Foo before
# calling create_script_that_extends_foo_and_instance as mentioned in
# error_case_1.gd
func _init():
	var f = Foo.new()
	Dynamic.create_script_that_extends_foo_and_instance()

	quit()