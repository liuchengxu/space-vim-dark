" Clear default
syn clear pythonStatement

" Set it to what's in the Python file, minus the class.
syn keyword pythonStatement    False None True
syn keyword pythonStatement    as assert break continue del exec global
syn keyword pythonStatement    lambda nonlocal pass print return with yield
syn keyword pythonStatement    def nextgroup=pythonFunction skipwhite

" Now make seperate syntax groups for the class.
syn keyword pythonClassStmt class nextgroup=pythonClass skipwhite
syn match   pythonClass "\h\w*" display contained

" Highlight the class statement and the class name.
" hi def link pythonClassStmt Statement
hi pythonClass ctermfg=168 cterm=None guifg=darkgreen

" python
" call HI('pythonStatement',     68, '', 'bold', 'bold')
" call HI('pythonBuiltin',       69,'', 'bold', 'bold')
" call HI('pythonOperator',      98,'', 'bold', 'bold')
" call HI('pythonRepeat',        133,'', 'bold', 'bold')
" call HI('pythonDecorator',     38, '', 'None', 'None')
" call HI('pythonDecoratorName', 38, '', 'None', 'None')

" syn keyword pythonClass self cls
" call HI('pythonClass',         104, '', 'bold', 'bold')
