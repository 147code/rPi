if has("syntax")
    syntax on                                                                      
endif

filetype plugin indent on

set exrc
set guicursor=

set relativenumber
set nu                                                                       

set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4                                                     
set shiftwidth=4                                                                
set expandtab                                                                   
set smartindent                                                                 
set nowrap                                                                      

"History"
set noswapfile                                                                  
set nobackup                                                                    
set undodir=~/.vim/undodir                                                      
set undofile                                                                    

set incsearch                                                                   
"set termguicolors"
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=80                                                              
set signcolumn=yes

"Give more space for displaying messages"
set cmdheight=2

set signcolumn=yes
highlight ColorColumn ctermbg=0 guibg=lightgrey 
