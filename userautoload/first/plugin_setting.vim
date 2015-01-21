"-----------------
" Plugin settings
"-----------------

" EasyMotion
let g:EasyMotion_leader_key = '<Space>'

" Unite
let g:unite_enable_start_insert = 1
autocmd FileType unite call unite#custom_default_action('directory', 'file')

" arpeggio
call arpeggio#load()

" syntastic
let g:syntastic_python_python_exec = '/usr/bin/python'
let g:syntastic_javascript_checkers = ['jshint']

" OmniSharp
let g:OmniSharp_host = "http://localhost:2000"
let g:OmniSharp_timeout = 1
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
set noshowmatch
set completeopt=longest,menuone,preview
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
set updatetime=500
