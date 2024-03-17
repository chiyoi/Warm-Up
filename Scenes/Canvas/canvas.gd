extends Control

var points = []
signal pen_release

func _gui_input(event):
	if event is InputEventScreenTouch or event is InputEventMouseButton:
		if event.pressed:
			points = [event.position]
		else:
			pen_release.emit()
	if event is InputEventScreenDrag or (event is InputEventMouseMotion and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT)):
		points.append(event.position)
		queue_redraw()

func _draw():
	if points.size() > 1:
		draw_polyline(points, Color(0x39 / 255.0, 0xc5 / 255.0, 0xbb / 255.0), 5)
