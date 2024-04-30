extends BetterCharacterBody2D
class_name Watcher


@onready var sprite: SpriteLeftRight = %"Sprite"
@onready var animator: AnimationPlayer = %"Animator"

func _ready():
	# Setup index and layers
	_on_fallen()

func _on_move(movement: Vector2):
	better_move_and_collide(movement)
	sprite.handle_move(movement)

func _on_dragged(_cursor: Cursor) -> void:
	animator.play(&"drag_start")

func _on_fallen() -> void:
	animator.play(&"RESET")

func _on_trapped() -> void:
	z_index = Enums.ZIndex.EntitySacrifice
	y_sort_enabled = false

func _on_freed() -> void:
	z_index = Enums.ZIndex.EntityAir
	y_sort_enabled = true
