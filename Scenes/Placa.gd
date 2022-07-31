extends Area2D

export (String, FILE, '*.tscn') var World_Scene

func _on_Placa_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene(World_Scene)
