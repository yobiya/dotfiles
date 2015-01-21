set encoding=utf-8
set tabstop=4
set shiftwidth=4
set number
set hlsearch
set smartcase
set textwidth=0
set nowrap
set noswapfile
set nobackup
set noundofile
set visualbell t_vb=	" ビープ音を鳴らさない
set wildmode=list:full
set hidden

filetype plugin on

" NeoBundle settings
if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/vimproc', {
\ 'build' : {
\     'windows' : 'make -f make_mingw32.mak',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'unix' : 'make -f make_unix.mak',
\    },
\ }
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'kana/vim-arpeggio'
NeoBundle 'kien/ctrlp.vim'

NeoBundle 'OmniSharp/omnisharp-vim', {
\   'autoload': {'filetypes': ['cs']},
\   'build': {
\     'windows': 'MSBuild.exe server/OmniSharp.sln /p:Platform="Any CPU"',
\     'mac': 'xbuild server/OmniSharp.sln',
\     'unix': 'xbuild server/OmniSharp.sln',
\   }
\ }

NeoBundleCheck

call neobundle#end()


filetype plugin indent on     " Required!

" 個別設定を読み込む
set runtimepath+=~/dotfiles/
runtime! userautoload/first/*.vim
runtime! userautoload/second/*.vim
runtime! userautoload/third/*.vim
