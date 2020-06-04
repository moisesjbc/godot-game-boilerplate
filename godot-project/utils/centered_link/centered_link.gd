tool
extends CenterContainer


export var label = "label"
export var href = "href"


func _ready():
	$link_button.text = self.label
	$link_button.hint_tooltip = "Will open a browser window to " + self.href

func _on_link_button_pressed():
	# Source: https://godotengine.org/qa/479/adding-an-http-link-to-a-button
	OS.shell_open(self.href)
