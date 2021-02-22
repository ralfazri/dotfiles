syntax on

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set hidden
set number
set backspace=indent,eol,start
" set hlsearch
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'neoclide/coc.nvim'

Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'

Plugin 'thosakwe/vim-flutter'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'natebosch/vim-lsc'
Plugin 'natebosch/vim-lsc-dart'

Plugin 'git://github.com/ajh17/VimCompletesMe.git'
Plugin 'git://github.com/kien/ctrlp.vim.git'
Plugin 'git://github.com/rking/ag.vim.git'
" Plugin 'ycm-core/YouCompleteMe'

Plugin 'nvim-lua/popup.nvim'
Plugin 'nvim-lua/plenary.nvim'
" Plugin 'nvim-telescope/telescope.nvim'
Plugin 'preservim/nerdcommenter'

call vundle#end()

filetype plugin indent on

let g:lsc_auto_map = v:true

colorscheme gruvbox

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" nnoremap <leader>fa :FlutterRun<cr>
" nnoremap <leader>fq :FlutterQuit<cr>
" nnoremap <leader>fr :FlutterHotReload<cr>
" nnoremap <leader>fR :FlutterHotRestart<cr>
" nnoremap <leader>fD :FlutterVisualDebug<cr>

" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" nnoremap <leader>p <cmd>Telescope git_files<cr>
" nnoremap <C-p>Telescope git_files<cr>

nnoremap <leader>p :CtrlP .<CR>

nnoremap <leader>[ :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" This is for flutter-template generator
:autocmd BufNewFile *_entity.dart 0r ~/.vim/bundle/flutter-templates/example_entity.dart
:autocmd BufNewFile *stf_widget.dart 0r ~/.vim/bundle/flutter-templates/example_stateful_widget.dart
":autocmd BufNewFile *_entity.dart 0r ~/.vim/bundle/flutter-templates/example_stateless_widget.dart
