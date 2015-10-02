
syntax on
set smartindent
set ruler
" space intendation
set expandtab
set tabstop=4
set shiftwidth=4
set ignorecase
let mapleader = ","

" status line with filename at the bottom of the screen
set laststatus=2

set encoding=utf8

" highlight trailspaces
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
"
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" highlight all searches
set hlsearch

" for go language
" https://github.com/nsf/gocode
" http://www.metal3d.org/ticket/2013/07/07/vim-for-golang
"set omnifunc=syntaxcomplete#Complete
"filetype plugin indent on     " required!
filetype plugin on


" 4 pathogen
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" remap key for omnifunc
" http://belchak.com/2011/01/31/code-completion-for-python-and-django-in-vim/
noremap <C-space> <C-x><C-o>

" include my super scripts
source ~/.vim/my.vim

set gcr=n:blinkon0

" NerdTree
" http://stackoverflow.com/questions/1979520/auto-open-nerdtree-in-every-tab
" http://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

"
" clang-format
" NORMAL and VISUAL mode
map <C-K> :pyf /opt/local/libexec/llvm-3.6/libexec/clang-format/clang-format.py
" INSERT mode
imap <C-K> :pyf /opt/local/libexec/llvm-3.6/libexec/clang-format/clang-format.py


"
"
" Highlight trailing spaces:
"
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/


"
"
" vimgrep mappings
" http://vim.wikia.com/wiki/Find_in_files_within_Vim
map <F5> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
map <F6> :execute "noautocmd vimgrep /\\<" . expand("<cword>") . "\\>/gj **/*." .  expand("%:e") <Bar> cw<CR>

" ctags move to definition
" http://stackoverflow.com/questions/563616/vim-and-ctags-tips-and-tricks
set splitright " http://stackoverflow.com/questions/7912060/vim-how-can-i-open-a-file-at-right-side-as-vsplit-from-a-left-side-nerdtree-pan
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
