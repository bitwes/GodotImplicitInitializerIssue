extends SceneTree

func _init():
	var DynamicScript = GDScript.new()
	DynamicScript.source_code = "extends 'res://src/node_uses_foo.gd'"
	DynamicScript.resource_path = 'this_prevents_the_error'
	DynamicScript.reload()

	var inst = DynamicScript.new() # OK
	print(inst)
	print(inst.f)

	quit()
