extends CharacterBody2D

var base_speed: float = 400.0
var max_speed: float = 650.0
var speed: float = 400.0

func _ready() -> void:
	if velocity == Vector2.ZERO:
		velocity = Vector2(1, 1).normalized() * speed

func _physics_process(_delta: float) -> void:
	move_and_slide()

func _draw() -> void:
	draw_circle(Vector2.ZERO, 12.0, Color.GREEN)
