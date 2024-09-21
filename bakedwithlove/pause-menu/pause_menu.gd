extends Control

@onready var main = $"../"


func _on_resume_pressed():
	main.pauseMenu()

func _on_restart_pressed():
	pass
	


func _on_quit_pressed() -> void:
	get_tree().quit()
