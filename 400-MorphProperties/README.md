Exploring morph visual properties in Cuis
=========================================
*by Ken Dickey*

Not everything is code centric.  It is good to look at UI-Tools.

- What Morphs are there?

In addition to the ***Morphic** Class Category in the base
Cuis image, there are many useful GUI compoments in
 -- https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-UI 

You can conveniently browse UI Class Categories if you open a Workspace and
````Smalltalk
  Feature require: 'UI-Tools'.
````

- GUI Design
 -- see https://drcuis.github.io/DesignGUI/

- How to make new kinds of Morph

- How to prototype/set-up/communicate: Layouts & Events

- Visual Thinking: Direct authoring with Visual Properties

 - Color

Color perception and computer usage is quite complex
 -- https://en.wikipedia.org/wiki/Color
 -- https://en.wikipedia.org/wiki/Color_model
 -- https://en.wikipedia.org/wiki/RGB_color_model

````Smalltalk
Feature require: 'Color-Extras'.
Feature require: 'UI-Color-Panel'.
Feature require: 'CSS3-NamedColors'.
Feature require: 'UI-MetaProperties'.
````
Browse classes: Class Color, TranslucentColor

Read class comments of: Color, Form, ColorPaneMorph



 - Layout


 - Value Editing; propeties & meta-programming
[SillyMorph](SillyMorph/README.md)
 - Fonts & Text: squeeze, label, ..
 - Panels & WindowTitle
 - ...

