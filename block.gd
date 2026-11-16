extends Area2D

var speed = 300
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("blocks")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y = position.y + speed * delta
	if position.y > 1320:
		queue_free()


func _on_area_entered(area: Area2D) -> void:
	print("Game Over")# Replace with function body.
	get_parent().game_over()
