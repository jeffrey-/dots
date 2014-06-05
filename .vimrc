set nocompatible
set paste
set ruler

set tabstop=4
set softtabstop=4
set	shiftwidth=4
set expandtab

set modelines=0
set encoding=utf-8
set undofile


hi Folded ctermfg=4
hi Folded ctermbg=0
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 




execute pathogen#infect()

let g:syntastic_haskell_ghc_mod_exe = 'ghc-mod check -g-w'                           

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -Wno-parentheses'
let g:syntastic_cpp_check_header = 1









let mapleader=" "

" From http://vim.wikia.com/wiki/Move_to_next/previous_line_with_same_indentation
" Jump to the next or previous line that has the same level or a lower
" level of indentation than the current line.
"
" exclusive (bool): true: Motion is exclusive
" false: Motion is inclusive
" fwd (bool): true: Go to next line
" false: Go to previous line
" lowerlevel (bool): true: Go to line with lower indentation level
" false: Go to line with the same indentation level
" skipblanks (bool): true: Skip blank lines
" false: Don't skip blank lines
function! NextIndent(exclusive, fwd, lowerlevel, skipblanks)
    let line = line('.')
    let column = col('.')
    let lastline = line('$')
    let indent = indent(line)
    let stepvalue = a:fwd ? 1 : -1
    while (line > 0 && line <= lastline)
        let line = line + stepvalue
        if ( ! a:lowerlevel && indent(line) == indent || a:lowerlevel && indent(line) < indent)
            if (! a:skipblanks || strlen(getline(line)) > 0)
                if (a:exclusive)
                    let line = line - stepvalue
                endif
                exe line
                exe "normal " column . "|"
                return
            endif
        endif
    endwhile
endfunction

function! J_InsertBraces()
    let ai = &autoindent
    let &autoindent = 1
    normal A {}O	
    let &autoindent = ai
    startinsert!
endfunction

function! J_WrapBraces()
    let cur = getpos('.')
    call NextIndent(0,0,1,1)
    normal A {Y
    call setpos('.', cur)
    normal p^c$}
    call setpos('.', cur)
endfunction

function! J_UnwrapBraces()
    let cur = getpos('.')
    call NextIndent(0,0,1,1)
    normal $T{
    let open = getpos('.')
    normal %dd
    call setpos('.', open)
    normal V:s/\s*{$//
    call setpos('.', cur)
endfunction

function! J_InsertFor()
    let var = input('var: ')
    let low = input('low: ')
    let hi  = input('hi: ')
    let reg = @@
    let @@ = 'for(int '.var.' = '.low.'; '.var.' < '.hi.'; ++'.var.')'
    normal p
    let @@ = reg
endfunction

noremap <Leader>{ :call J_InsertBraces()
noremap <Leader>( a()i
noremap <Leader>[ a[]i
noremap <Leader>h ggO"%p:%s/\.h/_h/VUy$i#ifndef<Space>o#define<Space>poGo#endif<Space>//p
noremap <Leader>f :call J_InsertFor()
noremap <Leader>w :call J_WrapBraces()
noremap <Leader>W :call J_UnwrapBraces()
