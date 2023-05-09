"
" ░░░██╗░░░██╗██╗███╗░░░███╗██████╗░░█████╗░
" ░░░██║░░░██║██║████╗░████║██╔══██╗██╔══██╗
" ░░░╚██╗░██╔╝██║██╔████╔██║██████╔╝██║░░╚═╝
" ░░░░╚████╔╝░██║██║╚██╔╝██║██╔══██╗██║░░██╗
" ██╗░░╚██╔╝░░██║██║░╚═╝░██║██║░░██║╚█████╔╝
" ╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝░╚════╝░
"

let mapleader = ","

filetype on
filetype off
filetype plugin indent on

set termguicolors
let base16colorspace=256  " Access colors present in 256 colorspace
set colorcolumn=80 " adds a ruler

" ******************* vimplug ***********************************************
call plug#begin()

" Startup page
Plug 'mhinz/vim-startify'

" Tomorrow theme
Plug 'chriskempson/tomorrow-theme'

" Fugitive is the premier Vim plugin for Git.
Plug 'tpope/vim-fugitive'

" A Vim plugin which shows git diff markers in the sign column and stages/
" previews/undoes hunks and partial hunks.
Plug 'airblade/vim-gitgutter'

" Vim base 16 colorschemes
Plug 'chriskempson/base16-vim'

" Easy colorscheme switcher
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'

"Enhances native vim's netrw
Plug 'tpope/vim-vinegar'

" Fuzzy finding for the vim
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'

" Motion plugin for vim. use s to start searching
Plug 'easymotion/vim-easymotion'

" cd to the root of the project
Plug 'airblade/vim-rooter'

" gruvbox theme
Plug 'gruvbox-community/gruvbox'

" status line plugin for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" golang support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Surrounding ysw
Plug 'http://github.com/tpope/vim-surround'

" For Commenting gcc & gc
Plug 'https://github.com/tpope/vim-commentary'

" Developer Icons
Plug 'https://github.com/ryanoasis/vim-devicons'

"C# support using omnisharp
Plug 'OmniSharp/omnisharp-vim'

" Mappings, code-actions available flag and statusline integration
Plug 'nickspoons/vim-sharpenup'

" Zooom
Plug 'dhruvasagar/vim-zoom'

" Monochrome theme for vim
Plug 'fxn/vim-monochrome'

" LSP for vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" coc marketplace for extensions.
Plug 'fannheyward/coc-marketplace'

" Auto pairing
Plug 'jiangmiao/auto-pairs'

" zig plug
Plug 'ziglang/zig.vim'

Plug 'sheerun/vim-polyglot'

" Rust support in vim
Plug 'rust-lang/rust.vim'

" Clang format
Plug 'rhysd/vim-clang-format'

" Vim markdown
Plug 'plasticboy/vim-markdown'

" ALE (Asynchronous Lint Engine) is a plugin providing linting (syntax checking
" and semantic errors)
Plug 'dense-analysis/ale'

call plug#end()

" ******************** vim settings *****************************************

" Theme
colorscheme monochrome
set background=dark

" set file encoding
set encoding=utf-8 nobomb   " BOM often causes trouble, UTF-8 is awsum.

" Disable vi compactibility
set nocompatible

" Turn syntax highlighting on.
syntax on

" Add relative line numbering
set relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup
set nowritebackup
set noswapfile

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" While searching though a file incrementally highlight matching characters as you type.
set incsearch
set hlsearch "Highlights search terms"
set incsearch "Highlights search terms as you type them"
set showmatch "Highlights matching parentheses"
set ignorecase "Ignores case when searching"
set smartcase "Unless you put some caps in your search term"

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000
set undolevels=999
set autoread

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set autoindent

set list
:set listchars=tab:>·,trail:~,extends:>,precedes:<

" changing whitespace size on file types
set tabstop=4 "Sets indent size of tabs"
set softtabstop=4 "Soft tabs"
set expandtab "Turns tabs into spaces"
set shiftwidth=4 "Sets auto-indent size"
set autoindent "Turns on auto-indenting"
set copyindent "Copy the previous indentation on autoindenting"
set smartindent "Remembers previous indent when creating new lines"

" use system clipboard for copy and paste
set clipboard=unnamed

" always show tab line
set showtabline=2

set backspace=indent,eol,start
nnoremap <leader>. <Plug>(zoom-toggle)

let g:webdevicons_enable = 1
let g:webdevicons_enable_startify = 1

" change the default character when no match found
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['cs'] = ''

" ************************ key mappings **************************************

" Easy tab navigation
nnoremap <leader>t :tabnew<CR>

" vim key remappings
inoremap jj <esc>

" Turn off search highlighting
nnoremap <CR> :noh<CR>

" Search by space
nnoremap <space> /

" esc using ;
nnoremap ; <s-nnoremap <leader>; ;
nnoremap ; :

" quick save using ,w
nnoremap <leader>w :w<CR>

" explorer
nnoremap <leader>e :Explore<CR>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Use a line cursor within insert mode and a block cursor everywhere else.
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Quick tabs
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)
noremap <C-t> :tabnew split<CR>

" Buffers
nnoremap <space><space> :bn<CR>
nnoremap <leader>b :ls<CR>

" Left and right can switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

" Neat X clipboard integration
" ,p will paste clipboard into buffer
" ,c will copy entire buffer into clipboard
noremap <leader>p :read !xsel --clipboard --output<cr>
noremap <leader>c :w !xsel -ib<cr><cr>

" <leader>s for Rg search
noremap <leader>rs :Rg

" Quick find using fzf
nnoremap <C-p> :Files<CR>
nnoremap <leader>; :Buffers<CR>
nnoremap <leader>a :Ag<CR>
let g:fzf_layout = { 'down': '~30%' }

" Open new file adjacent to current file
nnoremap <leader>o :e <C-R>=expand("%:p:h") . "/" <CR>

inoremap <left> <nop>
inoremap <right> <nop>

" :help to look for help
map <F1> <Esc>
imap <F1> <Esc>

" Disable automatic visual mode transition on mouse movement
set mouse-=a
set mouse=
set ttymouse=

" *********************** PLUGINs configuration ******************************

" Airline theme settings
let g:airline_theme = 'sol'

" Omnisharp configs
augroup omnisharp_commands
  autocmd!

  " Show type information automatically when the cursor stops moving.
  " Note that the type is echoed to the Vim command line, and will overwrite
  " any other messages in this space including e.g. ALE linting messages.
  autocmd CursorHold *.cs OmniSharpTypeLookup

  " The following commands are contextual, based on the cursor position.
  autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>fu <Plug>(omnisharp_find_usages)
  autocmd FileType cs nmap <silent> <buffer> <Leader>fi <Plug>(omnisharp_find_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>pd <Plug>(omnisharp_preview_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>pi <Plug>(omnisharp_preview_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osd <Plug>(omnisharp_documentation)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
  autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
  autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)

  " Navigate up and down by method/property/field
  autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
  autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
  " Find all code errors/warnings for the current solution and populate the quickfix window
  autocmd FileType cs nmap <silent> <buffer> <Leader>osgcc <Plug>(omnisharp_global_code_check)
  " Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
  autocmd FileType cs xmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
  " Repeat the last code action performed (does not use a selector)
  autocmd FileType cs nmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
  autocmd FileType cs xmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)

  autocmd FileType cs nmap <silent> <buffer> <Leader>os= <Plug>(omnisharp_code_format)

  autocmd FileType cs nmap <silent> <buffer> <C-r> <Plug>(omnisharp_rename)

  autocmd FileType cs nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)
augroup END

set completeopt=menuone,noinsert,noselect,popuphidden
set completepopup=highlight:Pmenu,border:off

let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_net6 = 1

let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_selector_findusages = 'fzf'

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

set completeopt=menuone,noinsert,noselect,preview

let g:airline_powerline_fonts = 1

" **************************************************************************
" ************************* CoC server settings ****************************
" **************************************************************************

set updatetime=100

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to
" enable no select by `"suggest.noselect": true` in your configuration file

" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> <C-b> <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


" airline settings
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Rust settings
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'

" ALE settings
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

let g:ale_completion_enabled = 0
let g:ale_completion_autoimport = 1
let g:ale_warn_about_trailing_whitespace = 1

" ALE Linters
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace']
\}
