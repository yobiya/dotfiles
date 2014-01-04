set encoding=utf-8
set tabstop=4
set shiftwidth=4
set number
set hlsearch
set nowrap
set noswapfile
set nobackup
set visualbell t_vb=	" ビープ音を鳴らさない

syntax on

" NeoBundle settings
if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Lokaltog/vim-easymotion'

filetype plugin indent on     " Required!

NeoBundleCheck

" Key maps
nnoremap <ESC><ESC> :nohlsearch<CR>	" ハイライトを消す
noremap <C-j> :
noremap! <C-j> <Enter>

" Alias
ca ub Unite buffer
ca uf Unite file

"Plugin settings
let g:EasyMotion_leader_key = '<Space><Space>'
