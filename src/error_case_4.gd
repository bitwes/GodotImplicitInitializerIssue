extends SceneTree

func _init():
	var DynamicScript = GDScript.new()
	DynamicScript.source_code = "var f := Foo.new()"
	DynamicScript.resource_path = ''
	DynamicScript.reload()

	var inst = DynamicScript.new() # SCRIPT ERROR: Invalid call. Nonexistent function 'new' in base 'GDScript'.
	print(inst) # a node
	print(inst.f) # null

	quit()
