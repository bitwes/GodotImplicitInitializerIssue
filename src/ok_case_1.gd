extends SceneTree

# Illustrate that there are no errors if you make reference
# to Foo before this.
func _init():
	var f = Foo.new()
	Dynamic.make_extend_foo_from_source()

	quit()