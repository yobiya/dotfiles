"----------------
" Key mapping
"----------------

" ハイライトを消す
nnoremap <ESC><ESC> :nohlsearch<CR>

" コマンドモードへ移行する
noremap <C-j> :

" レジスタを呼び出す
nnoremap <C-f> "

" 行頭・行末へ移動する
noremap <C-h> 0
noremap <C-l> $

" アスタリスクを入力
noremap <C-k> *
noremap! <C-k> *

" ¥と\を入れ替える
inoremap ¥ \
inoremap \ ¥

" ノーマルモードに戻った時に日本語入力をOFFにする
inoremap <silent> <ESC> <ESC>
inoremap <silent> <C-[> <ESC>

" arpeggio
Arpeggionoremap jk :w<Return>

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
