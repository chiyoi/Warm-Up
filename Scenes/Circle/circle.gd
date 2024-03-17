extends BaseButton

@onready var history = $History
var count = 0

func end_draw():
	count += 1
	print('nyan ' + count)

func _on_toggled(toggled_on: bool):
	if !toggled_on:
		history.visible = !history.visible
		set_pressed_no_signal(true)
