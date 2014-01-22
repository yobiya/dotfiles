set encoding=utf-8
set tabstop=4
set shiftwidth=4
set number
set hlsearch
set nowrap
set noswapfile
set nobackup
set visualbell t_vb=	" ビープ音を鳴らさない
set wildmode=list:full

filetype plugin on

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
NeoBundle 'Shougo/vimproc', {
\ 'build' : {
\     'windows' : 'make -f make_mingw32.mak',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'unix' : 'make -f make_unix.mak',
\    },
\ }


NeoBundleLazy 'nosami/Omnisharp', {
\   'autoload': {'filetypes': ['cs']},
\   'build': {
\     'windows': 'MSBuild.exe server/OmniSharp.sln /p:Platform="Any CPU"',
\     'mac': 'xbuild server/OmniSharp.sln',
\     'unix': 'xbuild server/OmniSharp.sln',
\   }
\ }


filetype plugin indent on     " Required!

NeoBundleCheck

" Alias
ca ub Unite buffer
ca uf Unite file

" Plugin settings
let g:EasyMotion_leader_key = '<Space><Space>'

" 個別設定を読み込む
set runtimepath+=~/dotfiles/
runtime! userautoload/*.vim
