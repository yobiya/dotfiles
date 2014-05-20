"----------------
" Key mapping
"----------------

" ハイライトを消す
nnoremap <ESC><ESC> :nohlsearch<CR>

" コマンドモードへ移行する
noremap <C-j> :

" コマンドモードの処理を実行する
noremap! <C-j> <Enter>

" ノーマルモードに戻った時に日本語入力をOFFにする
inoremap <silent> <ESC> <ESC>
inoremap <silent> <C-[> <ESC>

" easymotion
map f <Plug>(easymotion-fl)
map t <Plug>(easymotion-tl)
map F <Plug>(easymotion-Fl)
map T <Plug>(easymotion-Tl)
omap <Leader>w <Plug>(easymotion-bd-wl)
omap <Leader>e <Plug>(easymotion-bd-el)
nmap <Leader>s <Plug>(easymotion-s2)
xmap <Leader>s <Plug>(easymotion-s2)

" コマンドモードエイリアス
ca uf Unite file
ca ub Unite buffer
