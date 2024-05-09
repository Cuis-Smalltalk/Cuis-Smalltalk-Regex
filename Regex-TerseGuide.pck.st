'From Cuis6.3 [latest update: #6349] on 8 May 2024 at 7:36:17 pm'!
'Description Sincronized with Cuis 6.3'!
!provides: 'Regex-TerseGuide' 1 3!
!requires: 'Regex-Core' 1 5 nil!
!requires: 'TerseGuide' 1 0 nil!
SystemOrganization addCategory: #'Regex-TerseGuide'!


!classDefinition: #RxTerseGuide category: #'Regex-TerseGuide'!
TerseGuideTopic subclass: #RxTerseGuide
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regex-TerseGuide'!
!classDefinition: 'RxTerseGuide class' category: #'Regex-TerseGuide'!
RxTerseGuide class
	instanceVariableNames: ''!


!RxTerseGuide methodsFor: 'as yet unclassified' stamp: 'NM 8/3/2021 19:25:42'!
examples
	^ {
	 {#code -> '''hello123'' matchesRegex: ''he''  ' . #category -> ''.  
	  #description -> '# => false !! The regex does not match ALL the string.' } as: Dictionary. 
	
	 {#code -> '''hello123'' matchesRegex: ''he.*'' '    . #category -> ''.  
	  #description -> '# => ture !! The regex now can match ALL the string.' } as: Dictionary.       
	 
        {#code ->  ''' 2019-08-01T00:00:00+00:00'' allRegexMatches: ''\d+''. ' . #category -> ''.  
	  #description -> '# => getting all numeric substrings.' } as: Dictionary.       
    

        }! !

!RxTerseGuide methodsFor: 'as yet unclassified' stamp: 'NM 8/5/2021 11:20:06'!
script
	^ ' " 
A detailed description of the package by its original author ''Vassili Bykov'' can be found in RxParser class category DOCUMENTATION. The following notes were written by ''Dr. Nicola Mingotti'' in a cookbook style to help you get started. 
	
Regular expressions, ''Regex'' for short, are used to capture text patterns and were popularized by the Perl programming language. When we compare to anything we compare to Perl style regex.  

Caveats, for who already know Perl style regular expressions.
. Here there isn''t a special syntax to create regexp, they are made calling a method on aString
. The following regex delimiters {''^'', ''$'', ''\n''} are not recognized by Regex.
. What Regex call ''string match'' is a full string match. To match a substring in Regex you say ''search''.
. You must quote character $: as ''\:''
. Non greedy syntax is not implemented ex:. ''.*?''
. Limits are not implemented ex: ''\d{2,5}'' 

=========================================
============= Examples ==================== 
========================================= "

" . Does the string match a regex ? " 
''hello123'' matchesRegex: ''he''.     " => false "
''hello123'' matchesRegex: ''he.*''.   " => true "  

". Find all occurrences of a regex "
'' 2019-08-01T00:00:00+00:00'' allRegexMatches: ''\d+''.  
" => an OrderedCollection(''2019'' ''08'' ''01'' ''00'' ''00'' ''00'' ''00'' ''00'') "

". To ignore case there are appropriate methods as: matchesRegexIgnoringStringCase "

" . Split a string "
'','' asRegex split: ''123,c1,12.4 , Foo bar, baz''.
" => an OrderedCollection(''123'' ''c1'' ''12.4 '' '' Foo bar'' '' baz'') "

". Substitute each match with a given string " 
''ab cd ab'' copyWithRegex: ''(a|b)+'' matchesReplacedWith: ''foo'' . 
" => ''foo cd foo'' "

". Substitute each match with the result of a method call "
''ab cd ab'' copyWithRegex: ''(a|b)+'' matchesTranslatedUsing: [:each | each asUppercase] . 
" => ''AB cd AB'' "

". Grouping. Excuse the global vars ''str'' and ''rex'', better to run one line at a time in this case. "
str _ ''Today is 05-Aug, it is about 09:34, and we are near Verona. '' . 
str class. 
rex _ ''(\d+)\:(\d+)''  asRegex . 
rex class.                       " => RxMatcher "
rex search: str.               " =>  true            # true, a match has been found. "
rex subexpressionCount.  " => 3                 # number of elements matched. "
rex subexpression: 1.       " =>  ''09:34''       # first element is always the whole match. "
rex subexpression: 2.       " =>  ''09''           # then there are groups... "
rex subexpression: 3.       " =>  ''34''                                              "

"
=======================================
=======================================


Dr. Nicola Mingotti - Aug 2021.
"
' 


	! !

!RxTerseGuide methodsFor: 'as yet unclassified' stamp: 'NM 8/3/2021 18:34:40'!
title
	^ 'Regex'
	! !
