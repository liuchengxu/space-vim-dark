" Theme to mimic the default colorscheme of powerline
" Not 100% the same so it's powerline... ish.
"
" Differences from default powerline:
" * Paste indicator isn't colored different
" * Far right hand section matches the color of the mode indicator
"
" Differences from other airline themes:
" * No color differences when you're in a modified buffer
" * Visual mode only changes the mode section. Otherwise
"   it appears the same as normal mode

" Normal mode                                    " fg             & bg
let s:N1 = [ '#bcbcbc' , '#875faf' , 250  , 97 ] " darkestgreen   & brightgreen
let s:N2 = [ '#af5fd7' , '#1c1c1c' , 134 , 234 ] " gray8          & gray2
let s:N3 = [ '#875fdf' , '#080808' , 97 , 232 ] " white          & gray4

" Insert mode                                    " fg             & bg
let s:I1 = [ '#bcbcbc' , '#00af5f' , 250  , 35 ] " darkestcyan    & white
let s:I2 = [ '#005f5f' , '#00d787' , 23  , 42  ] " darkcyan       & darkblue
let s:I3 = [ '#5f0087' , '#5fd7a7' , 54 , 79  ] " mediumcyan     & darkestblue

" Visual mode                                    " fg             & bg
let s:V1 = [ '#5f0000' , '#d75f00' , 52 , 166 ] " gray3          & brightestorange

" Replace mode                                   " fg             & bg
let s:RE = [ '#00ffff' , '#d70000' , 51 , 160 ] " white          & brightred

let g:airline#themes#violet#palette = {}

let g:airline#themes#violet#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#violet#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#violet#palette.insert_replace = {
            \ 'airline_a': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ] }

let g:airline#themes#violet#palette.visual = {
            \ 'airline_a': [ s:V1[0]   , s:V1[1]   , s:V1[2]   , s:V1[3]   , ''     ] }

let g:airline#themes#violet#palette.replace = copy(airline#themes#violet#palette.normal)
let g:airline#themes#violet#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ]


let s:IA = [ s:N2[0] , s:N3[1] , s:N2[2] , s:N3[3] , '' ]
let g:airline#themes#violet#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
