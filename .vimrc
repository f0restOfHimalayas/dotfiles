let mapleader = ","

" set file type
filetype on
filetype off

set termguicolors
let base16colorspace=256  " Access colors present in 256 colorspace

call plug#begin()

" Fugitive is the premier Vim plugin for Git.
Plug 'tpope/vim-fugitive'

" A Vim plugin which shows git diff markers in the sign column and stages/previews/undoes hunks and partial hunks.
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

" Motion plugin for vim. user s to start searching
Plug 'easymotion/vim-easymotion'

" cd to the root of the project
Plug 'airblade/vim-rooter'

Plug 'gruvbox-community/gruvbox'

" status line for the vim
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'shinchu/lightline-gruvbox.vim'

" golang support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Surrounding ysw
Plug 'http://github.com/tpope/vim-surround'

" For Commenting gcc & gc
Plug 'https://github.com/tpope/vim-commentary'

" Developer Icons
Plug 'https://github.com/ryanoasis/vim-devicons'

" Vim Terminal
Plug 'https://github.com/tc50cal/vim-terminal'

" Async auto complete
Plug 'prabirshrestha/asyncomplete.vim'

"C# support using omnisharp
Plug 'OmniSharp/omnisharp-vim'

" Autocomplete
Plug 'dense-analysis/ale'

" Mappings, code-actions available flag and statusline integration
Plug 'nickspoons/vim-sharpenup'

"Zooom
Plug 'dhruvasagar/vim-zoom'

call plug#end()

nnoremap <leader>. <Plug>(zoom-toggle)

" Quick find using fzf
nnoremap <C-p> :Files<CR>
nnoremap <leader>; :Buffers<CR>
nnoremap <leader>f :Rg<CR>
nnoremap <leader>a :Ag<CR>


" Omnisharp configs

set completeopt=menuone,noinsert,noselect,popuphidden
set completepopup=highlight:Pmenu,border:off

let g:OmniSharp_server_path = 'C:\bin\omnisharp-win-x64-net6.0\OmniSharp.exe'
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_net6 = 1

imap <c-space> <Plug>(asyncomplete_force_refresh)

let g:asyncomplete_auto_popup = 0

let g:OmniSharp_selector_ui = 'fzf'    " Use fzf
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

" allow modifying the completeopt variable, or it will
" be overridden all the time
let g:asyncomplete_auto_completeopt = 0

set completeopt=menuone,noinsert,noselect,preview

let g:airline_powerline_fonts = 1

colorscheme gruvbox
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

" ALE: {{{
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_sign_info = '·'
let g:ale_sign_style_error = '·'
let g:ale_sign_style_warning = '·'

let g:ale_linters = { 'cs': ['OmniSharp'] }
" }}}

" Asyncomplete: {{{
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
" }}}

" Sharpenup: {{{
" All sharpenup mappings will begin with `<leader>os`, e.g. `<leader>osgd` for
" :OmniSharpGotoDefinition
let g:sharpenup_map_prefix = '<leader>os'

let g:sharpenup_statusline_opts = { 'Text': '%s (%p/%P)' }
let g:sharpenup_statusline_opts.Highlight = 0

augroup OmniSharpIntegrations
  autocmd!
  autocmd User OmniSharpProjectUpdated,OmniSharpReady call lightline#update()
augroup END
" }}}

" Lightline: {{{
let g:lightline = {
\ 'colorscheme': 'gruvbox',
\ 'active': {
\   'right': [
\     ['linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok'],
\     ['lineinfo'], ['percent'],
\     ['fileformat', 'fileencoding', 'filetype', 'sharpenup']
\   ]
\ },
\ 'inactive': {
\   'right': [['lineinfo'], ['percent'], ['sharpenup']]
\ },
\ 'component': {
\   'sharpenup': sharpenup#statusline#Build()
\ },
\ 'component_expand': {
\   'linter_checking': 'lightline#ale#checking',
\   'linter_infos': 'lightline#ale#infos',
\   'linter_warnings': 'lightline#ale#warnings',
\   'linter_errors': 'lightline#ale#errors',
\   'linter_ok': 'lightline#ale#ok'
  \  },
  \ 'component_type': {
  \   'linter_checking': 'right',
  \   'linter_infos': 'right',
  \   'linter_warnings': 'warning',
  \   'linter_errors': 'error',
  \   'linter_ok': 'right'
\  }
\}

" Use unicode chars for ale indicators in the statusline
let g:lightline#ale#indicator_checking = "\uf110 "
let g:lightline#ale#indicator_infos = "\uf129 "
let g:lightline#ale#indicator_warnings = "\uf071 "
let g:lightline#ale#indicator_errors = "\uf05e "
let g:lightline#ale#indicator_ok = "\uf00c "
" }}}

" OmniSharp: {{{
let g:OmniSharp_popup_position = 'peek'
if has('nvim')
  let g:OmniSharp_popup_options = {
  \ 'winblend': 30,
  \ 'winhl': 'Normal:Normal,FloatBorder:ModeMsg',
  \ 'border': 'rounded'
  \}
else
  let g:OmniSharp_popup_options = {
  \ 'highlight': 'Normal',
  \ 'padding': [0],
  \ 'border': [1],
  \ 'borderchars': ['─', '│', '─', '│', '╭', '╮', '╯', '╰'],
  \ 'borderhighlight': ['ModeMsg']
  \}
endif
let g:OmniSharp_popup_mappings = {
\ 'sigNext': '<C-n>',
\ 'sigPrev': '<C-p>',
\ 'pageDown': ['<C-f>', '<PageDown>'],
\ 'pageUp': ['<C-b>', '<PageUp>']
\}

let g:OmniSharp_highlight_groups = {
\ 'ExcludedCode': 'NonText'
\}
" }}}

" Use a line cursor within insert mode and a block cursor everywhere else.
"
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
