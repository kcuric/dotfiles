" .vimrc | bukinov | 2019

" 1. VUNDLE ========================================================================
" Osnovna konfiguracija za Vundle

" Help za Vundle ------------------------------------------------------------------
" :PluginList                         " Popis prosirenja
" :PluginInstall 		      
" :PluginUpdate 
" :PluginSearch
" :PluginClean                        " Brise nekoristena prosirenja
" --------------------------------------------------------------------------------

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim     " Runtime path
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'         " Dopusti Vundle da rukuje prosirenjima

" 1.1 MOJI PLUGINOVI ===============================================================
" Ovdje dodavati sve dodatna prosirenja.

Plugin 'morhetz/gruvbox'              " ColorScheme
Plugin 'vim-python/python-syntax'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'mattn/emmet-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'dense-analysis/ale'

call vundle#end()
filetype plugin indent on

" 2. OSNOVNA KONFIGURACIJA  =========================================================

" 2.1 OSNOVNO
set relativenumber                    " Relativni broj reda (u odnosu na ostale)
set cursorline                        " Oznaci trenutni red
set laststatus=2  		      " Uvijek pokazuj statusnu liniju
set showmode         		      " Prikazi trenutni mod
set showmatch       		      " Prikazi pripadajucu zagradu
set splitbelow splitright             " Otvaraj nove datoteke dolje i desno
" 2.2 SINTAKSA, OBILJEZAVANJE, BOJE
syntax on
let g:python_highlight_all = 1
colorscheme gruvbox

" 3. PRIJEDLOZI NAREDBI ============================================================

set wildmenu                          " Stisnes TAB i prikaze ti prijedloge
set wildchar=<TAB>
set wildmode=list:longest

" 4. ISKLJUCI ZVUCNE OBAVIJESTI ====================================================

set noerrorbells
set visualbell

" 5. PRECACI ======================================================================= 
ab nr NERDTree

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
