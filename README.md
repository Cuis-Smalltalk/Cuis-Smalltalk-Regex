Cuis-Smalltalk-Regex
====================

Regular Expressions for Cuis.

Tested in Cuis 6.3 rev 6350

This is a port of Vassili Bykov's regular expression parser.

To install in a Cuis image with its tests, open a Workspace and DoIt:
````Smalltalk
   Feature require: #'Regex-Tests'.
````

To install it without its tests, open a Workspace and DoIt:
````Smalltalk
   Feature require: #'Regex-Core'.
````

To install TerseGuide entry, open a Workspace and DoIt:
````Smalltalk
   Feature require: #'Regex-TerseGuide'.
````

- Original port by German Arduino -- https://github.com/garduino
- Cuis updated based on port by Phil Bella -- https://github.com/pbella
- Updates integrated by Ken Dickey -- https://github.com/KenDickey
- Updates by Nicola Mingotti -- https://github.com/nmingotti
- Ported to Cuis 6.3 by Hernán Wilkinson -- https://github.com/hernanwilkinson
- Updated copyright and license, cleanup by Juan Vuletich -- https://github.com/jvuletich
