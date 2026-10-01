extends Control

@onready var notes = {
	KEY_A: {
		"player": $Sounds/Do,
		"highlight": $Keys/A
	},
	KEY_S: {
		"player": $Sounds/Re,
		"highlight": $Keys/S
	},
	KEY_D: {
		"player": $Sounds/Mi,
		"highlight": $Keys/D
	},
	KEY_F: {
		"player": $Sounds/Fa,
		"highlight": $Keys/F
	},
	KEY_G: {
		"player": $Sounds/Sol,
		"highlight": $Keys/G
	},
	KEY_H: {
		"player": $Sounds/La,
		"highlight": $Keys/H
	},
	KEY_J: {
		"player": $Sounds/Si,
		"highlight": $Keys/J
	}
}



func _input(event):
	if event is InputEventKey:
		var key = event.physical_keycode
		
		if notes.has(key):
			var note = notes[key]
			if event.pressed and not event.echo:
				note["player"].stop()
				note["player"].play()
				note["highlight"].visible = true
			elif not event.pressed:
				note["highlight"].visible = false
		
		
		
		
		
		
		
