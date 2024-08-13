extends Node2D



func _process(delta):
	match Game.PlayerSelect:
		0: 
			get_node("PlayerSelect").play("mainMale")
			get_node("des").text = "Gender: Male"
		1:
			get_node("PlayerSelect").play("mainFemale")
			get_node("des").text = "Gender: Female"
	
func _on_left_pressed():
	if Game.PlayerSelect > 0:
		Game.PlayerSelect -= 1


func _on_right_pressed():
	if Game.PlayerSelect < 1:
		Game.PlayerSelect += 1



func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/world.tscn")
