extends Area2D

var speed = 900
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
		add_to_group("bullets")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y = position.y - speed * delta
	if position.y < -30:
		queue_free()
