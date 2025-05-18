"Small, invisible area acts as button
 to save consecutive screenshots"

Feature require: 'Graphics-Files-Additional'. "Write as PNG"

clickArea := BorderedBoxMorph new.
baseName := 'CuisDisplay'.
secondsDelay := 6.
clickArea color: Color transparent;
	borderWidth: 2; "set to 0 to hide screen click area"
	openInWorld;
	morphPosition: 0@0; "Upper left corner of display"
	setProperty: #count toValue: 1;
	setProperty: #handlesMouseDown: toValue: true;
	setProperty: #'mouseButton1Up:localPosition:'
	  toValue: [ :evt :pos |
		[ |fileName |
			fileName :=
				 baseName,
				 ((clickArea valueOfProperty: #count) asString),
				 '.png'.
			"Allow time to open a menu before snapshot"
			(Delay forSeconds: secondsDelay) wait.
			Display writePNGfile: fileName asFileEntry.
			clickArea setProperty: #count
				toValue: (clickArea valueOfProperty: #count) + 1.
			clickArea inform: fileName. "Show user newly saved file name"
		] fork. "Asynchronous; Code waits while user adjusts menu or whatever"
	].
