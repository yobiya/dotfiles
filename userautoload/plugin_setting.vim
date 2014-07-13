"-----------------
" Plugin settings
"-----------------

" EasyMotion
let g:EasyMotion_leader_key = '<Space>'

" Unite
autocmd FileType unite call unite#custom_default_action('directory', 'file')

" pathgen
" execute pathogen#infect()

" OmniSharp
let g:OmniSharp_host = "http://localhost:2000"

"Set the type lookup function to use the preview window instead of the status
"line
"let g:OmniSharp_typeLookupInPreview = 1

"Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 1

"Showmatch significantly slows down omnicomplete
"when the first match contains parentheses.
set noshowmatch
"Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

"Super tab settings
"let g:SuperTabDefaultCompletionType = 'context'
"let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
"let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]
"let g:SuperTabClosePreviewOnPopupClose = 1

""don't autoselect first item in omnicomplete, show if only one item (for preview)
"remove preview if you don't want to see any documentation whatsoever.
"set completeopt=longest,menuone,preview Fetch full documentation during omnicomplete requests.  There is a performance penalty with this (especially on Mono)
" By default, only Type/Method signatures are fetched. Full documentation can still be fetched when
" you need it with the :OmniSharpDocumentation command.
" let g:omnicomplete_fetch_documentation=1

"Move the preview window (code documentation) to the bottom of the screen, so it doesn't move the code!
"You might also want to look at the echodoc plugin
set splitbelowk
