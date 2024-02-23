extends SceneTree

func _init():
	var DynamicScript = GDScript.new()
	DynamicScript.source_code = "extends 'res://src/node_uses_foo.gd'"
	DynamicScript.resource_path = ''
	DynamicScript.reload()

	var inst = DynamicScript.new() # ERROR: Parameter "p_script->implicit_initializer" is null.
	print(inst) # a node
	print(inst.f) # null

	quit()
