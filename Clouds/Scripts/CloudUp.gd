extends RigidBody2D

onready var coll = $CollisionShape2D
onready var sprite = $Sprite
onready var playback = $CloudTree.get("parameters/playback")

var id = Vector2(0,-1)
var disabled = false
var respawn = true

func _process(delta):

	if disabled:
		coll.set_deferred("disabled",true)
		playback.travel("Vanish")
	else:
		coll.set_deferred("disabled",false)
		playback.travel("Idle")