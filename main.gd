extends Node2D

var clicks = 0
var click_power = 1
var brother_price = 25
var auto_clicker_power = 0
var auto_clicker_price = 50
var faster_auto_price = 100
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
	$shop/Label.text = "Bobux: " + str(clicks)


func _brother_button_pressed():
	if self.brother_price <= self.clicks:
		self.click_power += 1
		self.clicks -= self.brother_price
		self.brother_price = floor(1.25 * self.brother_price)
		$game/Label.text = "Bobux: " + str(self.clicks)
		$shop/Label.text = "Bobux: " + str(self.clicks)
		$"shop/brother button".text = " Brother (+1 bobux per click) \n" + str(self.brother_price) + " bobux"


func _auto_clicker_pressed():
	if self.auto_clicker_price <= self.clicks:
		self.clicks -= self.auto_clicker_price
		self.auto_clicker_price = floor(1.25 * auto_clicker_price)
		self.auto_clicker_power += 1
		$game/Label.text = "Bobux: " + str(self.clicks)
		$shop/Label.text = "Bobux: " + str(self.clicks)
		$"game/licks per second".text = "BOBUX PER SECOND: " + str(auto_clicker_power)
		$"shop/auto_clicker".text = " L auto clicker (+1 bobux per sec) \n" + str(self.auto_clicker_price) + " bobux"
	


func _on_timer_timeout():
	clicks += auto_clicker_power
	$game/Label.text = "Bobux: " + str(self.clicks)
	$shop/Label.text = "Bobux: " + str(self.clicks)


func _on_faster_auto_clicker_pressed():
	if self.faster_auto_price <= self.clicks:
		$game/Timer.wait_time = 0.5
		self.clicks -= self.faster_auto_price
		self.faster_auto_price = floor(1.25 * self.faster_auto_price)
		$game/Label.text = "Bobux: " + str(self.clicks)
		$shop/Label.text = "Bobux: " + str(self.clicks)
		$"shop/faster auto clicker".text = "Faster auto clicker\n" + "USED"
		$"shop/faster auto clicker".disabled = true
