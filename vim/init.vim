" Managing plugins using vim-plug
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree' " File browser
Plug 'tpope/vim-fugitive' " Git wrapper
Plug 'w0rp/ale' " Async linting engine
Plug 'tpope/vim-surround' " Surround text objects
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fzf plugin
Plug 'junegunn/fzf.vim' " fzf buffer
Plug 'bling/vim-airline' " Vim status bar
Plug 'tpope/vim-commentary' " Key bindings for commenting
Plug 'majutsushi/tagbar' " Ctags bar for exploring symbols
Plug 'airblade/vim-gitgutter' " Git diffs in gutter
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " autcompletion
Plug 'zchee/deoplete-jedi' " autocompletion for python
Plug 'junegunn/vim-easy-align' " Align text
Plug 'sjl/gundo.vim' " Undo tree
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] } " Wrapper around multiple grep tools
Plug 'terryma/vim-multiple-cursors' " Multiple cursor support
Plug 'Yggdroot/indentLine' " Shows indent guides on screen
Plug 'raimondi/delimitmate' " Insert mode autocompletion for delimiters
Plug 'takac/vim-hardtime' " Makes it harder to use arrows and hjkl
Plug 'thinca/vim-quickrun' " Execute part of file
Plug 'tpope/vim-repeat' " Supports repeat of complex motions
Plug 'junegunn/vim-peekaboo' " Peek into registers
Plug 'vim-airline/vim-airline-themes' " Collection of airline themes
Plug 'matze/vim-move' " Move visually selected lines
Plug 'eugen0329/vim-esearch' " Search all files in project for keyword
Plug 'tmhedberg/SimpylFold' " Better python code folding
Plug 'terryma/vim-expand-region' " Expand selected region
Plug 'wellle/targets.vim' " Supports more text-objects
Plug 'plasticboy/vim-markdown' " Markdown support for vim
Plug 'junegunn/goyo.vim' " Distraction-free writing in vim
Plug 'junegunn/limelight.vim' " Hyperfocus-writing in vim
Plug 'christoomey/vim-system-copy' " Support system copy-paste (Install xsel)
Plug 'luochen1990/rainbow' " Rainbow paranthesis
Plug 'vimwiki/vimwiki' " Wiki in vim
Plug 'Shougo/neosnippet.vim' " Plugin for snippet supports
Plug 'Shougo/neosnippet-snippets' " A collection of popular snippets
Plug 'honza/vim-snippets' " More snippets
Plug 'sickill/vim-pasta' " Paste preserves indentation
Plug 'mhinz/vim-startify' " Show start-page when you open nvim
Plug 'ryanoasis/vim-devicons' " Icon support
Plug 'sheerun/vim-polyglot' " Multiple language syntax support
Plug 'michaeljsmith/vim-indent-object' " Defines indent as text object
Plug 'mattn/emmet-vim' " Emmet support for vim
Plug 'justinmk/vim-sneak' " Sneak for vim
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ } " Language client support
Plug 'tpope/vim-rhubarb' " Remote source control support
Plug 'farmergreg/vim-lastplace' " Remember last place on exit
Plug 'tpope/vim-dispatch' " Async builder
Plug 'janko-m/vim-test' " Makes testing easier
Plug 'Wakatime/vim-wakatime' " Wakatime
Plug 'edkolev/tmuxline.vim' " Tmux line sync with airline
Plug 'tmux-plugins/vim-tmux-focus-events' " Restore focus autocommands in tmux session
Plug 'christoomey/vim-tmux-navigator' " Seamless navigation between vim and tmux
Plug 'chrisbra/Colorizer' " Highlight colors in vim
Plug 'KabbAmine/zeavim.vim' " Search zeal docs from vim
Plug 'machakann/vim-highlightedyank' " Highlights yanked text briefly
" Themes
Plug 'rakr/vim-two-firewatch'
Plug 'roosta/srcery'
Plug 'joshdick/onedark.vim'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'sjl/badwolf'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'jacoborus/tender.vim'
Plug 'dylanaraps/wal.vim'
call plug#end()

set number
"set numberwidth=3
" Relative line numbering
syntax enable
set background=dark
colorscheme wal
highlight Comment cterm=italic
highlight Comment gui=italic
" colorscheme onedark
" let g:onedark_terminal_italics=1
" set termguicolors
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set expandtab
" set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set copyindent
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set magic
set backspace=indent,eol,start
filetype plugin indent on
"autocmd filetype python set expandtab
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set hidden

" Change the mapleader to \ (default)
let mapleader="\<SPACE>"
" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\
set list
autocmd filetype html,xml set listchars-=tab:>.
set pastetoggle=<F2>
" Unmapping the arrow keys
noremap <up> <Nop>
noremap <down> <Nop>
noremap <left> <Nop>
noremap <right> <Nop>
inoremap <up> <Nop>
inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>
" " Remapping the movement
" nnoremap j gj
" nnoremap k gk
nmap <silent> <leader>/ :nohlsearch<CR>
" Easy window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Nerditya neovim setup
set showcmd
set showmode
set ruler
set formatoptions+=o
set modeline
set nojoinspaces
" More natural splits
set splitbelow
set splitright
" Toggle between normal and relative numbering
nnoremap <leader>r :call NumberToggle()<CR>

" Airline
set laststatus=2
" set t_Co=256
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#left_sep = '>'
" let g:airline#extensions#tabline#left_alt_sep = '>'
" let g:airline#extensions#tabline#right_sep = '>'
" let g:airline#extensions#tabline#right_alt_sep = '>'
"let g:airline_left_sep = ' '
"let g:airline_left_alt_sep = '>'
"let g:airline_right_sep = ' '
"let g:airline_right_alt_sep = '>'
let g:airline_powerline_fonts = 1
let g:airline_theme='wal' " old: base16_google
" let g:airline_theme='onedark' " old: base16_google

" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
" Let TAB also do autocompletion
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
call deoplete#custom#source('LanguageClient',
            \ 'min_pattern_length',
            \ 2)
" set sources
let g:deoplete#sources = {}
let g:deoplete#sources.cpp = ['LanguageClient']
let g:deoplete#sources.rust = ['LanguageClient']
let g:deoplete#sources.c = ['LanguageClient']
let g:deoplete#sources.vim = ['vim']

" ale settings
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'jsx': ['stylelint', 'eslint'],
\   'python': ['pylint', 'mypy', 'flake8'],
\}
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'python': ['black', 'autopep8'],
\}
let g:ale_linter_aliases = {'jsx': 'css'}
let g:ale_python_mypy_options = '--ignore-missing-imports'

" Git gutter settings
set updatetime=1000

" fzf settings
" Remapping
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
" Open file menu
nnoremap <Leader>o :GFiles<CR>
nnoremap <Leader>O :Files<CR>
" Open buffer menu
nnoremap <Leader>b :Buffers<CR>
" Open most recently used files
nnoremap <Leader>f :History<CR>
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" vim-esearch settings
let g:esearch = {
    \ 'adapter': 'ag',
    \ 'backend': 'nvim',
    \ 'out': 'win',
    \ 'batch_size': 1000,
    \ 'use': ['visual', 'hlsearch', 'last'],
    \}
" Vim-move customization
let g:move_key_modifier = 'C-S'

" Automatically start nerdtree
"autocmd vimenter * NERDTree
map <C-\> :NERDTreeToggle<CR>
" Automatically close NERDTree if it's the last window there
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeHijackNetrw = 1

" Remapping buffer navigation
" Move to next tab
nmap <leader>] :bnext<CR>
" Move to previous buffer
nmap <leader>[ :bprevious<CR>

" Enabling Hardmode
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
let g:hardtime_default_on = 1

" Tagbar toggle
nmap <F8> :TagbarToggle<CR>

" Minimap Highlight
let g:minimap_highlight='Visual'

" Colbycheeze settings
" Autoload files
set autoread
au FocusGained,BufEnter * :silent! !
set visualbell
" set cursorline
"Toggle relative numbering, and set to absolute on loss of focus or insert mode
set rnu
function! ToggleNumbersOn()
    set nu!
endfunction
function! ToggleRelativeOn()
    set rnu!
    set nu
endfunction
"autocmd FocusLost * call ToggleRelativeOn()
"autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()
" Make it obvious where 100 characters is
set textwidth=0
" set formatoptions=cq
set formatoptions=qrn1
set wrap linebreak "nolist
"set wrapmargin=80
"set colorcolumn=+1
" Remapping the Esc key
:imap jk <Esc>
" Map Leader S to save
map <leader>s :w<CR>
" Quickly close windows
nnoremap <leader>x :x<cr>
" Quickly quit window
nnoremap <leader>q :q!<cr>

" A good vimrc
set foldenable " Enables folding
set foldlevelstart=10 "Folds below level 10 will be folded
set foldnestmax=10 "More than 10 folds can't be nested
set foldmethod=indent

" Gundo-vim mapping
nnoremap <F5> :GundoToggle<CR>

" Indent line settings
let g:indentLine_char = '┆'
let g:indentLine_color_gui = '#A4E57E'

" Resizing using arrow keys
nnoremap <left> :vertical resize +5<cr>
nnoremap <right> :vertical resize -5<cr>
nnoremap <up> :resize +5<cr>
nnoremap <down> :resize -5<cr>

" Highlighting when col >= 80
" let &colorcolumn=join(range(81,999),",")

" Simply fold settings
let g:SimpylFold_docstring_preview = 1

" Limelight Goyo.vim integration
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:goyo_linenr=1

"" Vim pencil settings
"augroup pencil
    "autocmd!
    "autocmd FileType markdown,mkd call pencil#init()
"augroup END
"let g:pencil#wrapModeDefault = 'soft'

" vim markdown settings
let g:vim_markdown_math=1

" Instant markdown settings
let g:instant_markdown_autostart = 0

"" vim flavored markdown
"augroup markdown
    "au!
    "au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
"augroup END

"Syntax highlighting in Markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown
let g:markdown_fenced_languages = ['bash=sh', 'css', 'django', 'handlebars', 'javascript', 'js=javascript', 'json=javascript', 'perl', 'php', 'python', 'ruby', 'sass', 'xml', 'html', 'r']

" Overriding vim italics codes
"  must be entered with <C-V><Esc>
set t_ZH=[3m
set t_ZR=[23m

" Rainbow parentheses
let g:rainbow_active = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" Narrow ag results in vim using fzf
function! s:ag_to_qf(line)
  let parts = split(a:line, ':')
  return {'filename': parts[0], 'lnum': parts[1], 'col': parts[2],
        \ 'text': join(parts[3:], ':')}
endfunction

function! s:ag_handler(lines)
  if len(a:lines) < 2 | return | endif

  let cmd = get({'ctrl-x': 'split',
               \ 'ctrl-v': 'vertical split',
               \ 'ctrl-t': 'tabe'}, a:lines[0], 'e')
  let list = map(a:lines[1:], 's:ag_to_qf(v:val)')

  let first = list[0]
  execute cmd escape(first.filename, ' %#\')
  execute first.lnum
  execute 'normal!' first.col.'|zz'

  if len(list) > 1
    call setqflist(list)
    copen
    wincmd p
  endif
endfunction

command! -nargs=* Ag call fzf#run({
\ 'source':  printf('ag --nogroup --column --color "%s"',
\                   escape(empty(<q-args>) ? '^(?=.)' : <q-args>, '"\')),
\ 'sink*':    function('<sid>ag_handler'),
\ 'options': '--ansi --expect=ctrl-t,ctrl-v,ctrl-x --delimiter : --nth 4.. '.
\            '--multi --bind=ctrl-a:select-all,ctrl-d:deselect-all '.
\            '--color hl:68,hl+:110',
\ 'down':    '50%'
\ })

" Vim expand region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Vim wiki settings
let g:vimwiki_list = [{"path": '/home/dileep/Dropbox/Notes', "path_html": '/home/dileep/Dropbox/Notes/exports', "syntax": 'markdown', "template_path": '/home/dileep/Dropbox/vimwiki/', "template_default": 'default', "template_ext": '.tpl', "auto_export": 0}]
let g:vimwiki_dir_link = 'index'
let g:vimwiki_hl_headers = 1
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_table_mappings = 0
autocmd FileType vimwiki :RainbowToggleOff

" Tmuxline settings
" let g:tmuxline_preset = 'full'
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#W',
      \'c'    : '#H',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W #F'],
      \'x'    : '%a',
      \'y'    : '#W %R',
      \'z'    : '#H'}
let g:airline#extensions#tmuxline#enabled = 0

" Setting syntax coloring for nextflow files
augroup filetypedetect
    au BufRead,BufNewFile *.nf set filetype=groovy
augroup END

" Setting syntax coloring for coconut files
augroup filetypedetect
    au BufRead,BufNewFile *.coco set filetype=python
augroup END

" Setting syntax coloring for jsx files
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

" deoplete settings
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" deoplete-jedi configurations
let g:deoplete#sources#jedi#server_timeout = 20
let g:deoplete#sources#jedi#show_docstring = 1
" virtual environment setting for deoplete-jedi
let g:python_host_prog = '/usr/bin/python3'
let g:python3_host_prog = '/usr/bin/python3'

" Grepper configuration
nnoremap <leader>r :Grepper -tool git<cr>
nnoremap <leader>R :Grepper -tool ag<cr>

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Optional. The default behaviour should work for most users.
let g:grepper               = {}
let g:grepper.tools         = ['git', 'ag', 'rg']
let g:grepper.jump          = 0
let g:grepper.next_tool     = '<leader>g'
let g:grepper.simple_prompt = 0
let g:grepper.quickfix      = 0

" LanguageClient Configuration
" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['pyls'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" Git fugitive configuration

nnoremap <leader>gc :Gcommit<CR>
vnoremap <leader>gs :diffput<CR>
nnoremap <leader>ga :Gwrite<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gp :Gpush<CR>

" Hack to make vim fugitive work  with https on neovim
if (len($SECURITYSESSIONID) || len($DISPLAY)) && empty($SSH_ASKPASS)
  let s:gui_askpass = system("git --exec-path")[0:-2] . "/git-gui--askpass"
  if executable(s:gui_askpass)
    let $SSH_ASKPASS = s:gui_askpass
  elseif executable("ssh-askpass")
    let $SSH_ASKPASS = "ssh-askpass"
  endif
endif

" Setting for vim-test
nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>    " t Ctrl+f
nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+g
" make test commands execute using dispatch.vim
let test#strategy = "dispatch"
" test to be used for python
let test#python#runner = 'pytest'

" Live view of subsitutions
set inccommand=split

" Use sytem clipboard
" set clipboard+=unnamedplus

" Make highlighted text more visible
hi HighlightedyankRegion cterm=reverse gui=reverse
