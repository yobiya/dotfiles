"-----------------
" Plugin settings
"-----------------

" EasyMotion
let g:EasyMotion_leader_key = '<Space>'

" Unite
let g:unite_enable_start_insert = 1
autocmd FileType unite call unite#custom_default_action('directory', 'file')

" pathgen
execute pathogen#infect()

" arpeggio
call arpeggio#load()

" OmniSharp
let g:OmniSharp_host = "http://localhost:2000"
let g:OmniSharp_timeout = 1
set noshowmatch
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
set completeopt=longest,menuone,preview
set splitbelow
let g:syntastic_cs_checkers = ['syntax', 'issues']
autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck
autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()
set updatetime=500
set cmdheight=2
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")
autocmd BufWritePost *.cs call OmniSharp#AddToProject()

