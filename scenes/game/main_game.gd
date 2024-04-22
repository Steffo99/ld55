extends Node2D
class_name MainGame


@onready var camera: GameCamera = $"GameCamera"
@onready var default_spawn_parent: Node2D = %"DefaultSpawnParent"
@onready var inventory: Inventory = %"Inventory"


static func get_via_group(node: Node) -> MainGame:
	var result = node.get_tree().get_nodes_in_group("game")
	if result.is_empty():
		return null
	return result[0]
