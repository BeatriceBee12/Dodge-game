extends Node2D
var score = 0.0
const BLOCK = preload("res://block.tscn")


func _on_timer_timeout() -> void:
	var block = BLOCK.instantiate()
	block.position.x = randf_range(40, 680)
	block.position.y = -40
	block.speed = 300 + score * 10
	add_child(block)
func _process(delta):
	score = score + delta
	$Label.text = str(int(score))
func game_over():
	$GameOver.show()
	get_tree().call_group("blocks", "queue_free")
	get_tree().paused = true
	$Player.hide()
	


func _on_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()
