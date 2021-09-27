extends Area2D

onready var sprite = $Sprite

var dentro = false
var on = false

var current

func _ready():
	sprite.rotation_degrees = 0

func _physics_process(delta):
	current = get_parent().current
		
	dentro = false
	for body in get_overlapping_bodies():
		if body.name == "PlayerDown":
			dentro = true
	
	if current == 2:
		if (Input.is_action_just_pressed("up") or Input.is_action_just_pressed("down")) and dentro:
			if on:
				on = false
				get_parent().lever = 4
			else:
				on = true
				get_parent().lever = current
			
	if get_parent().lever != 2:
		on = false
		
	if on:
		sprite.frame = 49
	else:
		sprite.frame = 48
				
		
			
