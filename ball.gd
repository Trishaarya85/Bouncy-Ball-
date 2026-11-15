extends CharacterBody2D

@export var speed: float = 250.0
@export var steer_force: float = 600.0

func _ready() -> void:
	velocity = Vector2(0, speed)

func _physics_process(delta: float) -> void:
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity += input_dir * steer_force * delta
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	move_and_slide()

func _draw() -> void:
	draw_circle(Vector2.ZERO, 12.0, Color.YELLOW)
