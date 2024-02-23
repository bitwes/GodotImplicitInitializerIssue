extends SceneTree

# Illustrate that there are no errors if you make reference
# to Foo before this.
func _init():
	var f = Foo.new()
	Dynamic.create_script_that_extends_foo_and_instance()

	quit()