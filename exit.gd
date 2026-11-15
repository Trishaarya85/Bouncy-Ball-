extends Area2D

signal player_escaped

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.name == "Ball":
		player_escaped.emit()
