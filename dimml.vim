" Vim syntax file
" Language:     DimML
" Maintainer:   Tim Segers <t.segers93@gmail.com>
" Copyright:    2015 Tim Segers
" License:      MIT http://opensource.org/licenses/MIT
" Last Change:  2015-11-18
" Filenames:    *.dimml
"
if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword dimmlInclude        import
syn keyword dimmlKeyword        def do event flow match on plugin version
syn keyword dimmlLang           groovy javascript dimml
syn keyword dimmlStorageClass   const extends 
syn keyword	dimmlTodo		    contained TODO FIXME XXX
syn keyword dimmlType           concept val 

" Language Highlight
if !exists("dimml_highlight_js") 
    syntax include @dimmlJS $VIMRUNTIME/syntax/javascript.vim
    syn region  dimmlCodeSnip       start=+`+ end=+`+ contains=@dimmlJS
else
    syn region  dimmlCodeSnip       start=+`+ end=+`+ 
endif


" String
syn region  dimmlString         start=+"+ end=+"+ end=+$+
syn region  dimmlString         start=+'+ end=+'+ end=+$+
syn region  dimmlComment        start=+//+ end=+$+ contains=dimmlTodo
syn region  dimmlComment        start=+/\*+ end=+\*/+ contains=dimmlTodo

" Other
syn match   dimmlLangOverride   "@[a-zA-Z]\+" 
syn match   dimmlNumber         "\([0-9]\+\)"
syn match   dimmlOperator       "\(=>\)\|="

" LINKS
hi link     dimmlCodeSnip       Constant
hi link     dimmlComment        Comment
hi link     dimmlInclude        Include
hi link     dimmlKeyword        Keyword
hi link     dimmlLangOverride   Keyword
hi link     dimmlNumber         Number
hi link     dimmlOperator       Operator
hi link     dimmlStatement      Statement
hi link     dimmlStorageClass   StorageClass
hi link     dimmlString         String
hi link     dimmlTodo           Todo
hi link     dimmlType           Type


