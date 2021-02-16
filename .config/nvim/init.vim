

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

" Enable autocompletion:
	set wildmode=longest,list,full

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>

" Groff/tex filetype autodetect
autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
autocmd BufRead,BufNewFile *.tex set filetype=tex

" Compile document, be it groff/LaTeX/markdown/etc.
nnoremap <leader>c :w \| !/home/salil/.scripts/compiler "<c-r>%"<CR>

" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!


"clear selection
noremap <silent> <C-l> <Esc>:noh<CR>
"Source vimrc
noremap <silent> <leader>s <Esc>:source $MYVIMRC<CR>
"Global copy/paste
vnoremap <leader>y "+y
noremap <leader>v "+p
"Select all
nnoremap <C-a> gg <S-v><S-g>


" MATLAB mappings

" comment and uncomment selection
vnoremap <silent> <leader>r :s/^/%/<CR><Esc>:noh<CR>
vnoremap <silent> <leader>t :s/^%*\s\+//<CR><Esc>:noh<CR>

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
vnoremap <leader>b xi<CR><CR><ESC>2k0i%%<CR>%<ESC>k$p

" Add ; at the end of each line
vnoremap <leader><leader> :s/;$//<CR><ESC>gv:s/$/;/<CR><ESC>gv:s/^;//<CR><ESC>:noh<CR>


"This is insane, I really shouldnt be using vim mappings as aliases.

inoremap <leader>ze zeros()<ESC>i
inoremap <leader>1 ones()<ESC>i
inoremap <leader>gauss gauss = @(mu_x,mu_y,sigma,X,Y)<Space>exp(-((X-mu_x).^2+(Y-mu_y).^2)/(2*sigma^2));<ESC>


"Latex
nnoremap <silent> cmp :! pdflatex % > /dev/null<CR><CR>

" Automatically deletes all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e
