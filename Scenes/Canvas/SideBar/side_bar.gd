extends ColorRect

@onready var buttons = $Buttons

func _ready():
	for button in buttons.get_children():
		button.connect("toggled", on_button_toggled(button))

func on_button_toggled(button_pressed):
	return func(toggled_on):
		if toggled_on:
			for button in buttons.get_children():
				if button != button_pressed:
					button.set_pressed_no_signal(false)
