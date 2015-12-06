"----------------
" Key mapping
"----------------

" ハイライトを消す
nnoremap <ESC><ESC> :nohlsearch<CR>

" コマンドモードへ移行する
noremap <C-j> :

" 行頭・行末へ移動する
noremap <C-h> ^
noremap <C-l> $

" アスタリスクを入力
noremap! <C-k> *

" ノーマルモードに戻った時に日本語入力をOFFにする
inoremap <silent> <ESC> <ESC>
inoremap <silent> <C-[> <ESC>

" easymotion
omap <Leader>w <Plug>(easymotion-bd-wl)
omap <Leader>e <Plug>(easymotion-bd-el)
nmap <Leader>s <Plug>(easymotion-s2)
xmap <Leader>s <Plug>(easymotion-s2)

" arpeggio
Arpeggionoremap jk :w<Return>

" incsearch
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n <Plug>(incsearch-nohl-n)
map N <Plug>(incsearch-nohl-N)
map * <Plug>(incsearch-nohl-*)
map <C-k> <Plug>(incsearch-nohl-*)
map # <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g<C-k> <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" コマンドモードエイリアス
ca uf Unite file
ca ub Unite buffer
ca ug Unite grep
ca vs VimShell

ca osb OmniSharpBuild
ca osba OmniSharpBuildAsync
ca osgd OmniSharpGotoDefinition
ca osft OmniSharpFindType
ca osfu OmniSharpFindUsages
ca osgca OmniSharpGetCodeActions
ca osdoc OmniSharpDocumentation
