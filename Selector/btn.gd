extends TextureButton

export var level_int: int = 1
export var level_proyect_dir: String = ''

func _ready():
	if level_int<= Globals.current_level:
		disabled = false
		$Label.visible = true
		$Label.text =str(level_int)
	else:
		disabled = true
		$Label.visible = false

func _on_btn_pressed():
	if level_proyect_dir != '':
		get_tree().change_scene(level_proyect_dir)
		
