syntax keyword javaType
            \ ArrayList
            \ Character
            \ Collection
            \ Double
            \ Entry
            \ Exception
            \ File
            \ FileReader
            \ FileWriter
            \ Gson
            \ HashMap
            \ HashSet
            \ Integer
            \ Iterator
            \ List
            \ Map
            \ Math
            \ Object
            \ Random
            \ Scanner
            \ Set
            \ String
            \ StringBuilder
            \ TreeSet

" syntax match javaClassdef "\(class \)\@<=\<\w\{-\}\>\( \?\n\?{\)\@="

" syntax match javaClassDeclaration "\(Annotation\|public\|protected\|private\|static\|abstract\|final\|native\|synchronized\|transient\|volatile\|strictfp\) class \w* \(<\w*\(, \w*\)*>\)\? \(extends "

" syntax match javaType "\(^\s*\(public \|private \|protected \)*\(static \|final \|abstract \|synchonized \)*\)\@<=[A-z_$]\+\( [A-z_$]\+\)\@="

" syntax match javaType "\(< \?\)\@<=[A-z_$]\+\( \?>\)\@="

syntax match javaBasicType "\(byte\|short\|char\|int\|long\|float\|double\|boolean\)"

" syntax match javaReferenceType ""

" syntax match javaTypeArguments "< \w* \(, \w*\)* >" contains=javaTypeArgument

" syntax match javaTypeArgument "\w*" contained

