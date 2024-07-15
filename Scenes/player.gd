extends RigidBody2D

var pull_force : float = 25.0

func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var direction_to_mouse = global_position.direction_to(get_global_mouse_position())
		apply_impulse(direction_to_mouse * pull_force)
