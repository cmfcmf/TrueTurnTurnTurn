extends CollisionShape2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export (Vector2) var SPEED2

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	if is_colliding():
    	var n = get_collision_normal()
    	motion = n.reflect(motion)
#	pass
