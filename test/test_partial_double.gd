extends GutTest

class TestDouble:
	extends GutTest

	var MainScene = Globals.Scenes.MainScene

	func test_d_main_scene():
		var d = double(MainScene).instantiate()
		assert_not_null(d)
		assert_is(d, Node)


	func test_double_one():
		var d = double(One).new()
		assert_not_null(d)
		assert_is(d, One)


	func test_double_has_class_name_and_one():
		var d = double(HasClassName).new()
		assert_not_null(d)
		assert_is(d, HasClassName)


	func test_double_one_again():
		var d = double(One).new()
		assert_not_null(d)
		assert_is(d, One)


	func test_double_one_yet_again():
		var d = double(One).new()
		assert_not_null(d)
		assert_is(d, One)

	func test_double_two():
		var d = double(Two).new()
		assert_not_null(d)
		assert_is(d, Two)

	func test_double_some_control():
		var d = double(Globals.Scenes.SomeControl).instantiate()
		assert_not_null(d)
		assert_is(d, BaseControl)


class TestPartialDouble:
	extends GutTest

	var MainScene = Globals.Scenes.MainScene

	func test_d_main_scene():
		var d = add_child_autofree(partial_double(MainScene).instantiate())
		assert_not_null(d)
		assert_is(d, Node)


	func test_double_one():
		var d = partial_double(One).new()
		assert_not_null(d)
		assert_is(d, One)


	func test_double_has_class_name_and_one():
		var d = partial_double(HasClassName).new()
		assert_not_null(d)
		assert_is(d, HasClassName)


	func test_double_one_again():
		var d = partial_double(One).new()
		assert_not_null(d)
		assert_is(d, One)


	func test_double_one_yet_again():
		var d = partial_double(One).new()
		assert_not_null(d)
		assert_is(d, One)

	func test_double_two():
		var d = partial_double(Two).new()
		assert_not_null(d)
		assert_is(d, Two)

	func test_double_some_control():
		var d = partial_double(Globals.Scenes.SomeControl).instantiate()
		assert_not_null(d)
		assert_is(d, BaseControl)



class TestDoDoublesAgain:
	extends TestDouble


class TestDoPartialsAgain:
	extends TestPartialDouble