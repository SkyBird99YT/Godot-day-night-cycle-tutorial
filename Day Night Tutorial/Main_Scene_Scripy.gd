extends Node2D
#starts the day
func _ready():
	$CanvasLayer/Control/Morning.set_deferred("visible", true)
	$Day_NIght_Cycle/Morning.start()

#when dawn finish it changes to morning
func _on_Dawn_timeout():
	$CanvasLayer/Control/Dawn.set_deferred("visible", true)
	$CanvasLayer/Control/Morning.set_deferred("visible", false)
	$Day_NIght_Cycle/Dawn.stop()
	$Day_NIght_Cycle/Morning.start()
	modulate = Color8(255, 255, 255, 255)
#when morning finish it changes to dusk
func _on_Morning_timeout():
	$CanvasLayer/Control/Dusk.set_deferred("visible", true)
	$CanvasLayer/Control/Morning.set_deferred("visible", false)
	$Day_NIght_Cycle/Morning.stop()
	$Day_NIght_Cycle/Dusk.start()
	modulate = Color8(160, 160, 160, 255)

#when dusk finish it turns to night
func _on_Dusk_timeout():
	$CanvasLayer/Control/Night.set_deferred("visible", true)
	$CanvasLayer/Control/Dusk.set_deferred("visible", false)
	$Day_NIght_Cycle/Dusk.stop()
	$Day_NIght_Cycle/Night.start()
	modulate = Color8(43, 43, 43, 255)

#when night finish it turns to dawn
func _on_Night_timeout():
	$CanvasLayer/Control/Dusk.set_deferred("visible", true)
	$CanvasLayer/Control/Night.set_deferred("visible", false)
	$Day_NIght_Cycle/Night.stop()
	$Day_NIght_Cycle/Dawn.start()
	modulate = Color8(160, 160, 160, 255)
