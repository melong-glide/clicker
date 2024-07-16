extends Node2D

var clicks = 0
var click_power = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_shop_button_pressed():
	$game.visible = false
	$shop.visible = true


func _on_exit_button_pressed():
	$game.visible = true
	$shop.visible = false
	
func _on_main_button_pressed():
	print("You got scammed kid XD")
	self.clicks += click_power
	$game/Label.text = "Bobux: " + str(clicks)


func _brother_button_pressed():
	self.click_power += 1
