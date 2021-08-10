set ai                          " 自动缩进，新行与前面的行保持—致的自动空格
set aw                          " 自动写，转入shell或使用：n编辑其他文件时，当前的缓冲区被写入
set flash                       " 在出错处闪烁但不呜叫(缺省)
set ic                          " 在查询及模式匹配时忽赂大小写
set nu        
set number                      " 屏幕左边显示行号
"set showmatch                   " 显示括号配对，当键入“]”“)”时，高亮度显示匹配的括号
set showmode                    " 处于文本输入方式时加亮按钮条中的模式指示器
set showcmd                     " 在状态栏显示目前所执行的指令，未完成的指令片段亦会显示出来
set warn						" 对文本进行了新的修改后，离开shell时系统给出显示(缺省)
set ws							" 在搜索时如到达文件尾则绕回文件头继续搜索
set wrap						" 长行显示自动折行
"colorscheme evening            " 设定背景为夜间模式
filetype plugin on              " 自动识别文件类型，自动匹配对应的, “文件类型Plugin.vim”文件，使用缩进定义文件
set autoindent                  " 设置自动缩进：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
set cindent                     " 以C/C++的模式缩进
set noignorecase                " 默认区分大小写
set ruler                       " 打开状态栏标尺
set scrolloff=5                 " 设定光标离窗口上下边界 5 行时窗口自动滚动
set shiftwidth=4                " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4               " 使得按退格键时可以一次删掉 4 个空格,不足 4 个时删掉所有剩下的空格）
set tabstop=4                   " 设定 tab 长度为 4
set wrap                        " 自动换行显示
syntax enable
syntax on                       " 自动语法高亮
set tags=./tags;tags




map <F1> :NERDTreeToggle<CR>
map <F2> ::LeaderfFunction!<CR>




" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'vim-airline/vim-airline'

Plug 'ludovicchabant/vim-gutentags'

Plug 'Yggdroot/LeaderF'

Plug 'dense-analysis/ale'

" Initialize plugin system
call plug#end()










let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\}
