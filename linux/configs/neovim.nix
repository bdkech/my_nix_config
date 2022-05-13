# Neovim settings

{ config, lib, pkgs, ...}:
{
    programs.neovim = {
	# sets alias vim=nvim
	enable = true;
	vimAlias = true;
        plugins = with pkgs.vimPlugins; [
            gruvbox
	    nerdtree
	    goyo-vim
	    easymotion
	];
	extraConfig = ''
            """"""Basic""""""
            let mapleader="\<SPACE>"
            
            set path=$PWD/**
            
            set mouse=a
            
            " Write file
            nnoremap <Leader>w :w<CR>
            
            nnoremap <up> <nop>
            nnoremap <down> <nop>
            nnoremap <left> <nop>
            nnoremap <right> <nop>
            nnoremap j gj
            nnoremap k gk
            
            nnoremap <C-J> <C-W><C-J>
            nnoremap <C-K> <C-W><C-K>
            nnoremap <C-L> <C-W><C-L>
            nnoremap <C-H> <C-W><C-H>
            
            
            set noshowmode
            set showmatch
            set ruler
            set nu
            set rnu
            set cursorline
            
            set autowrite
            set autoindent    
            set expandtab
            set smarttab
            set tabstop=4
            set shiftwidth=4
            set softtabstop=4
            set noerrorbells
            set linespace=0
            set nojoinspaces
            
            set splitbelow
            set splitright
            set shiftround    
            
            set ai
            set si
            
            set autoread
            set encoding=utf-8
            
            set undofile
            set undolevels=1000
            
            inoremap jk <esc>
            
            """"""Trailing whitespace""""""
            " display tabs and trailing spaces
            set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅"
            
            """"""Search""""""
            set hlsearch
            set ignorecase
            set smartcase
            set incsearch
            set gdefault
            set magic
            
            nnoremap <leader>, :nohlsearch<CR>
            
            " Search and Replace remapping
            nmap <Leader>s :%s//g<Left><Left>
            
            
            """"""Status line""""""
            let g:lightline = {
                  \ 'colorscheme': 'gruvbox',
                  \ 'component': {
                  \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}'
                  \ },
                  \ 'separator': { 'left': '⮀', 'right': '⮂' },
                  \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
                  \ }
            
            """"""Functions""""""
            " http://vi.stackexchange.com/questions/454/whats-the-simplest-way-to-strip-trailing-whitespace-from-all-lines-in-a-file
            "Remove all trailing whitespace by pressing F5
            nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
            
            """"""Color scheme""""""
            set background=dark
            colorscheme gruvbox
            set termguicolors
            let g:airline_powerline_fonts = 1
            let g:airline_theme='zenburn'
	    '';
    };
}
