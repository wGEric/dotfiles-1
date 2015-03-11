"set mouse-=a
if has('mouse')
"  set mouse=a
endif

set t_Co=256
set background=dark
colorscheme solarized

" Enable clipboard integration
"set clipboard=unnamed

set nostartofline
set hidden

set number

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
set ignorecase             " ignore case when searching
set smartcase

set autoread                " Update open files when changed externally
set laststatus=2

set encoding=utf-8
set showmode
set noshowcmd

set ttyfast

" ================ Scrolling ========================

set scrolloff=3         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=3

" ===================================================

" ================ Indentation ======================

set foldmethod=indent
set foldlevelstart=9999
set autoindent
set backspace=2
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set wrap
set linebreak
"set nolist
"set breakat=" ^I!@*-+;,./?"

" ===================================================

"set showmatch              " brackets/braces that is
"set mat=3                  " duration to show matching brace (1/10 sec)

" Make Vim able to edit crontab files again.
set backupskip=/tmp/*,/private/tmp/*"

set matchpairs+=<:>
set vb t_vb= " Turn off the bell, this could be more annoying, but I'm not sure how

" More sane colors of matching brackets and parens
" highlight MatchParen cterm=bold ctermbg=bg ctermfg=Red

"highlight ShowTrailingWhitespace ctermbg=Red guibg=Red
"highlight ExtraWhitespace ctermbg=DarkGreen guibg=DarkGreen
"match ExtraWhitespace /\s\+$/
"autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"autocmd InsertLeave * match ExtraWhitespace /\s\+$/
"autocmd BufWinLeave * call clearmatches()

set list
set listchars=tab:>.,trail:.,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
