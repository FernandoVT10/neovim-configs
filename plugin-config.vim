" lose tags file types
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

let g:lightline = {
  \ 'colorscheme': 'material',
  \ 'active': {
  \   'left': [[ 'mode', 'paste' ], [ 'readonly', 'relativepath',  'modified' ]],
  \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'FugitiveHead',
  \   'kitestatus': 'kite#statusline'
  \ },
  \ }

"Emmet key leader
let g:user_emmet_leader_key=','

" Set theme
set termguicolors
let g:material_style='oceanic'
set background=dark
colorscheme vim-material

" Set background transparetn
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

" NERDTree configutation
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

"Coc vim Configuration
autocmd CursorHold * silent call CocActionAsync("highlight")

autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1

" Kite
let g:kite_supported_languages = ['*']

" UltiSnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" NerdCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = "left"

" Testing configuration
let test#strategy = "dispatch"
