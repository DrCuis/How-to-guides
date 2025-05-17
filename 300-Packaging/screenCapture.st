"Small, invisible area acts as button
 to save consecutive screenshots"

Feature require: 'Graphics-Files-Additional'. "Wrire as PNG"

clickArea := BorderedBoxMorph new.
clickArea color: Color transparent;
	borderWidth: 0; "set to 2 to see screen click area"
	openInWorld;
	morphPosition: 0@0; "Upper left corner of display"
	setProperty: #count toValue: 16;
	setProperty: #handlesMouseDown: toValue: true;
	setProperty: #'mouseButton1Up:localPosition:'
	  toValue: [ :evt :pos |
		[ |fileName |
			fileName := 'IADict',
				((clickArea valueOfProperty: #count) asString),
				 '.png'.
			"Allow time to open a menu before snapshot"
			(Delay forSeconds: 6) wait.
			Display writePNGfile: fileName asFileEntry.
			clickArea setProperty: #count
				toValue: (clickArea valueOfProperty: #count) + 1.
			clickArea inform: fileName. "Let user know file name"
		] fork. "Asynchronous, so can wait while user open menu"
	].
