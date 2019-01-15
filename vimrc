set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " general
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'editorconfig/editorconfig-vim'
  " snippets
  Plugin 'garbas/vim-snipmate'
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'honza/vim-snippets'
  " themes
  Plugin 'luciusgone/vim-themes'
  Plugin 'chriskempson/base16-vim'
call vundle#end()

function RelativePath()
  return fnamemodify(expand("%:p"),":.")
endfunction

colorscheme tomorrow-night-eighties

set encoding=utf-8
set cursorline
set mouse=a
set nobackup
set nowritebackup
set noswapfile
set noerrorbells
set novisualbell
set history=100
set fileencoding=utf-8
set fileformats=unix,dos
set textwidth=80
set colorcolumn=+1
set number
set numberwidth=5
set list
set listchars=tab:▸⋅,eol:¬,trail:⋅,space:⋅,nbsp:⋅
set laststatus=2
set statusline=%(No.%n\ %)%(\>\ %<%{RelativePath()}%)%=%(%3p%%\|\ %c\c\,\ %l\/%L\L%)
set shiftwidth=2
set tabstop=2
set expandtab
set foldmethod=syntax
set foldcolumn=1
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
syntax on
filetype plugin indent on

" Gitgutter
let g:gitgutter_sign_column_always = 1
" CtrlP
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" EditorConfig
let g:EditorConfig_core_mode = "external_command"
