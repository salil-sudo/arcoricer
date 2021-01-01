

source $HOME/.config/nvim/vim-plug/plugins.vim
set relativenumber
set number
set nocompatible
"set termguicolors



" the configuration options should be placed before `colorscheme miramare`
"let g:miramare_enable_italic = 1
"let g:miramare_disable_italic_comment = 1

"colorscheme gruvbox
colorscheme wal
let mapleader = ";"
source $HOME/.config/nvim/vim-plug/plugins.vim



noremap <silent> <C-l> <Esc>:noh<CR>
noremap <silent> <leader>s <Esc>:source $MYVIMRC<CR>
vnoremap <leader>y "+y
noremap <leader>v "+p
nnoremap <C-a> gg <S-v><S-g>


" MATLAB mappings

" comment and uncomment selection
vnoremap <silent> <leader>r :s/^/%/<CR><Esc>:noh<CR>
vnoremap <silent> <leader>t :s/^%*//<CR><Esc>:noh<CR>

" clear/delete functions/for loops
inoremap <leader>f function<CR><CR><CR><CR>end<ESC>4k$a<Space>
inoremap <leader>l for<CR><CR><CR><CR>end<ESC>4k$a<Space>
nnoremap <leader>f ifunction<CR><CR><CR><CR>end<ESC>4k$a<Space>
nnoremap <leader>l ifor<CR><CR><CR><CR>end<ESC>4k$a<Space>
nnoremap <leader>cf ?function<CR>o<ESC><S-v>/end<CR>k<S-D><S-o><CR><CR><ESC>:noh<CR>ki
nnoremap <leader>cl ?for<CR>o<ESC><S-v>/end<CR>k<S-D><S-o><CR><CR><ESC>:noh<CR>ki
nnoremap <leader>df ?function<CR><S-V>/end<CR><S-D>i
nnoremap <leader>dl ?for<CR><S-V>/end<CR><S-D>i


"make selection an executable block
vnoremap <leader>b xi<CR><CR><ESC>2k0i%%<CR>%%<ESC>k$p

" Add ; at the end of each line
vnoremap <leader><leader> :s/;$//<CR><ESC>gv:s/$/;/<CR><ESC>gv:s/^;//<CR><ESC>:noh<CR>


"This is insane, I really shouldnt be using vim mappings as aliases.

inoremap <leader>ze zeros()<ESC>i
inoremap <leader>1 ones()<ESC>i
inoremap <leader>gauss gauss = @(mu_x,mu_y,sigma,X,Y)<Space>exp(-((X-mu_x).^2+(Y-mu_y).^2)/(2*sigma^2));<ESC>
" Automatically deletes all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e
