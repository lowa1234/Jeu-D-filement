tool
extends Label

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var vie = 3 setget _set_vie 

# Called when the node enters the scene tree for the first time.
func _ready():
	_set_vie(vie)

func _set_vie(Vie):
	text = "Vies: " + String(Vie)
	vie = Vie
	pass
