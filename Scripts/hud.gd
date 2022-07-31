extends Control

func _process(delta):
	$CanvasLayer/Label.text = "Moedas: " + str(GlobalVar.Moedas)

