"~/.vim/syntax/php.vim

"禁用VI兼容模式
set nocompatible
"vim内部编码
set encoding=utf-8
"vim与屏幕/键盘交互时使用的编码
set termencoding=utf-8
"vim当前编辑的文件在存储时的编码
set fileencoding=utf-8
"vim打开文件时尝试使用的编码
set fileencodings=ucs-bom,utf-8,gbk,default,latin1
"设置中文帮助
set helplang=cn

"设置字体
"if has("gui_running")
"    set guifont=Consolas:h9
    colorscheme freya
"endif

"PHP Base Setting
"格式化高亮
syntax on
"显示行号
set nu
"括号匹配
set showmatch
"自动检测文件类型
filetype plugin indent on
"在缩进和遇到Tab键时使用空格代替
set expandtab
"根据文件类型设置缩进格式
au FileType html,python,vim,javascript setl shiftwidth=2
au FileType html,python,vim,javascript setl tabstop=2
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4
"启动vim时不自动折叠代码
set foldlevel=100
"自动对齐
set ai
"依据上面的对齐格式
set si
set smarttab
set wrap
set lbr
set tw=0
set foldmethod=syntax

"其他关于php的设置
"设置显示历史记行数
set history=400
"Set to auto read when a file is changed from the outside
set autoread
" Have the mouse enabled all the time:
set mouse=a
" Do not redraw, when running macros.. lazyredraw
set lz
" set 7 lines to the curors - when moving vertical..
set so=7
" The commandbar is 2 high
set cmdheight=2
" Change buffer - without saving
set hid
" Ignore case when searching
" set ignorecase
set incsearch
" Set magic on
set magic
" No sound on errors.
set noerrorbells
set novisualbell
set t_vb=
" How many tenths of a second to blink
set mat=4
" Highlight search things
set hlsearch
" Turn backup off
set nobackup
set nowb
set noswapfile
" smart backspace
set backspace=start,indent,eol
" switch buffers with Tab
map <C-Tab> :bn<CR>
map <S-Tab> :bp<CR>


"配置文件.vimrc更改后自动重新载入使设置生效
autocmd! bufwritepost .vimrc source ~/.vimrc 
"设置重新载入.vimrc快捷键
map <silent> <leader>ss :source ~/.vimrc<cr>
"设置快速编辑.vimrc快捷键
map <silent> <leader>ee :e ~/.vimrc<cr>  
