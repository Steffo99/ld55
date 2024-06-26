@icon("res://behaviours/sacrificable.svg")
extends Node
class_name Sacrificable


## Emits [signal eaten] when eaten by an [Eater] whose acceptable diets contain this node's [field diet].
##
## To add multiple possible [Edible] diets to an entity, add multiple [Edible] nodes to it.

signal sacrificed


@export var kind: StringName = &""


func set_kind(value: StringName) -> void:
	kind = value

func sacrifice():
	sacrificed.emit()
