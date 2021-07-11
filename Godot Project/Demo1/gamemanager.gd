extends Control

onready var input_box = get_node("EnterPasscode")

func _ready():
	input_box.grab_focus()

func _on_ShutDown_pressed() -> void:
	get_tree().quit()

func _on_Login_pressed() -> void:
	if input_box.text == 'ItsSarrah1756':
		get_tree().change_scene('res://desktop.tscn')
	else:
		print_debug('Wrong Passcode')

func _on_EnterPasscode_text_entered(new_text: String) -> void:
	if new_text == 'ItsSarrah1756':
		get_tree().change_scene("res://desktop.tscn")
	else:
		print_debug('Wrong Passcode')
		
