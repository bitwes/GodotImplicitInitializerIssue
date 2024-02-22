class_name Main
extends Node2D


var hcn = HasClassName.new()
# var o = One.new()
# var t = Two.new()
var base_control = BaseControl.new()
var extends_base = ExtendsBaseControl.new()

func _init():
	hcn.v_one.the_var = 'changed by main'
	hcn.v_one.return_something()
	base_control.foo = extends_base.bar
	extends_base.two.the_var = extends_base.foo


func _ready():
	var in_scene_control = $SomeControl
	print(in_scene_control)
