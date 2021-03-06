extends "res://Blocks/BasicBlock.gd"
const Player = preload("res://Player.gd")
const LightClass = preload("res://Light.gd")

func _ready():
	._ready()
	color = LightClass.Colors.ORANGE

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func collideWithPlayer(collider, collision):
	if(not active):
		return
	elif (not collider is Player):
		return
	else:
		var dir = -collision.travel.reflect(collision.normal)
		print(dir)
		collider.velocity += dir * 100