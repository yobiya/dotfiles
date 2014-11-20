"----------------
" Key mapping
"----------------

" ハイライトを消す
nnoremap <ESC><ESC> :nohlsearch<CR>

" コマンドモードへ移行する
noremap <C-j> :

" カーソルの位置の単語を検索
noremap <C-k> *
noremap g<C-k> g*

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

" コマンドモードエイリアス
ca uf Unite file
ca ub Unite buffer
ca ug Unite grep
ca vs VimShell
