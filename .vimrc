" Set syntax highlighting options.
:set t_Co=256
:set background=dark 
:syntax on
:colorscheme molokai

" Change mapleader
:let mapleader=","

" Set some junk
:set autoindent " Copy indent from last line when starting new line.
:set backspace=indent,eol,start
:set cursorline " Highlight current line
:set diffopt=filler " Add vertical spaces to keep right and left aligned
:set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
:set encoding=utf-8 nobomb " BOM often causes trouble
:set esckeys " Allow cursor keys in insert mode.
:set expandtab " Expand tabs to spaces
:set foldmethod=syntax " Markers are used to specify folds.
:set foldenable
:set foldlevel=1
:set hidden " When a buffer is brought to foreground, remember undo history and marks.
:set history=1000 " Increase history from 20 default to 1000
:set hlsearch " Highlight searches
:set incsearch " Highlight dynamically as pattern is typed.
:set laststatus=2 " Always show status line
:set magic " Enable extended regexes.
:set nocompatible " Make vim more useful
:set noerrorbells " Disable error bells.
:set nostartofline
:set nowrap " Do not wrap lines.
:set nu " Enable line numbers.
:set report=0 " Show all changes.
:set ruler " Show the cursor position
:set scrolloff=3 " Start scrolling three lines before horizontal border of window.
:set shiftwidth=2 " The # of spaces for indenting.
:set shortmess=I " Don't show the intro message when starting vim.
:set showmode " Show the current mode.
:set showtabline=2 " Always show tab bar.
:set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
:set softtabstop=2 " Tab key results in 2 spaces
:set title " Show the filename in the window titlebar.
:set ttyfast " Send more characters at a given time.
:set wildchar=<TAB> " Character for CLI expansion (TAB-completion).
:set wildmenu " Hitting TAB in command mode will show possible completions above command line.
:set wildmode=list:longest " Complete only until point of ambiguity.

" Speed up viewport scrolling
:nnoremap <C-e> 3<C-e>
:nnoremap <C-y> 3<C-y>

" Remap arrow keys
:inoremap <Left>  <NOP>
:inoremap <Right> <NOP>
:inoremap <Up>    <NOP>
:inoremap <Down>  <NOP>

" Sudo write (,W)
:noremap <leader>W :w !sudo tee %<CR>

" Remap :W to :w
:command W w

" Toggle show tabs and trailing spaces (,c)
:set lcs=tab:>-,trail:·,eol:$,nbsp:_
:set fcs=fold:-
:nnoremap <silent> <leader>c :set nolist!<CR>

" FuzzyFinder (,ff) (,fb) (,fd)
:nnoremap <leader>ff :FufFile<CR>
:nnoremap <leader>fb :FufBuffer<CR>
:nnoremap <leader>fd :FufDir<CR>

" New tab (Ctrl + T)
:map <C-T> <Esc>:tabnew<CR>

" Clear last search (,cs)
:map <silent> <leader>cs <Esc>:let @/ = ""<CR>

" Indent/unident block (,]) (,[)
:nnoremap <leader>] >i{<CR>
:nnoremap <leader>[ <i{<CR>

" Paste toggle (,p)
:set pastetoggle=<leader>p
:map <leader>p :set invpaste paste?<CR>

" Nerdtree (,n)
:map <leader>n :NERDTreeToggle<CR>

" Buffer navigation (,,) (,]) (,[) (,ls)
:map <Leader>, <C-^>
" :map <Leader>] :bnext<CR>
" :map <Leader>[ :bprev<CR>
:map <Leader>ls :buffers<CR>

" Yank from cursor to end of line
:nnoremap Y y$

" Insert newline
:map <S-Enter> O<ESC>
:map <Enter> o<ESC>

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
    exec ':%s/ \+$//gc'
endfunction
:noremap <leader>ss :call StripWhitespace ()<CR>

" Save and restore folds
" :au BufWinLeave * mkview
" :au BufWinEnter * silent loadview

" Fix page up and down
:map <PageUp> <C-U>
:map <PageDown> <C-D>
:imap <PageUp> <C-O><C-U>
:imap <PageDown> <C-O><C-D>

:filetype plugin on

" Markdown
augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END