extends SceneTree

# Creating one GDScript with a resource_path that is not empty seems to stop
# the error in future GDScripts with empty resource paths.
func _init():
	var DynamicScript = GDScript.new()
	DynamicScript.source_code = "extends 'res://src/node_uses_foo.gd'"
	DynamicScript.resource_path = 'something'
	DynamicScript.reload()

	DynamicScript = GDScript.new()
	DynamicScript.source_code = "extends 'res://src/node_uses_foo.gd'"
	DynamicScript.resource_path = ''
	DynamicScript.reload()

	var inst = DynamicScript.new() # OK
	print(inst)
	print(inst.f)

	DynamicScript = GDScript.new()
	DynamicScript.source_code = "extends 'res://src/node_uses_foo.gd'"
	DynamicScript.resource_path = ''
	DynamicScript.reload()

	inst = DynamicScript.new() # OK
	print(inst)
	print(inst.f)

	quit()
