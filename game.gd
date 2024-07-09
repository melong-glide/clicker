extends Node2D


var clicks = 0



func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	print("You got scammed kid XD")
	self.clicks += 1
	$Label.text = "Bobux: " + str(clicks)
