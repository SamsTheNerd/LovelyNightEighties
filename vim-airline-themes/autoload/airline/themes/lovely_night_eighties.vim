" Lovely Night Eighties vim-airline-theme (https://github.com/dawikur/base16-vim-airline-themes)
" For vim-airline (https://github.com/vim-airline/vim-airline)

let s:scheme_slug = substitute("lovely_night_eighties", "-", "_", "g")

let g:airline#themes#lovely_night_eighties#palette = {}

" GUI color definitions
let s:gui00 = '#120c1f'
let s:gui01 = '#1e1433'
let s:gui02 = '#312152'
let s:gui03 = '#47366b'
let s:gui04 = '#6574a6'
let s:gui05 = '#d9d9d9'
let s:guiRed = '#ff8c8e'
let s:guiOrange = '#ffac80'
let s:guiYellow = '#ffea80'
let s:guiGreen = '#8ae599'
let s:guiCyan = '#73e5e5'
let s:guiBlue = '#7399e5'
let s:guiPink = '#e391e5'

" Terminal color definitions
let s:cterm00        = "0"
if exists("base16colorspace") && base16colorspace == "256"
	let s:cterm01        = "017"
	let s:cterm02        = "053"
	let s:cterm03        = "059"
	let s:cterm04        = "067"
	let s:cterm05        = "188"
	let s:ctermRed       = "210"
	let s:ctermOrange    = "216"
	let s:ctermYellow    = "222"
	let s:ctermGreen     = "114"
	let s:ctermCyan      = "116"
	let s:ctermBlue      = "104"
	let s:ctermPink      = "176"
else
	let s:cterm01        = "04"
	let s:cterm02        = "05"
	let s:cterm03        = "08"
	let s:cterm04        = "06"
	let s:cterm05        = "15"
	let s:ctermRed       = "09"
	let s:ctermOrange    = "03"
	let s:ctermYellow    = "11"
	let s:ctermGreen     = "02"
	let s:ctermCyan      = "14"
	let s:ctermBlue      = "12"
	let s:ctermPink      = "13"
endif

let g:airline#themes#lovely_night_eighties#palette.normal = airline#themes#generate_color_map(
	\ [ s:gui00, s:gui04, s:cterm00, s:cterm04 ],
	\ [ s:gui04, s:gui02, s:cterm04, s:cterm02 ],
	\ [ s:gui04, s:gui01, s:cterm04, s:cterm01 ])
let g:airline#themes#lovely_night_eighties#palette.normal_modified = {
	\ 'airline_c' : [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]}

let g:airline#themes#lovely_night_eighties#palette.insert = airline#themes#generate_color_map(
	\ [ s:gui00, s:guiBlue, s:cterm00, s:ctermBlue ],
	\ [ s:gui04, s:gui02, s:cterm04, s:cterm02 ],
	\ [ s:gui04, s:gui01, s:cterm04, s:cterm01 ])
let g:airline#themes#lovely_night_eighties#palette.insert_modified = {
	\ 'airline_c' : [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]}

let g:airline#themes#lovely_night_eighties#palette.replace = airline#themes#generate_color_map(
	\ [ s:gui00, s:guiRed, s:cterm00, s:ctermRed ],
	\ [ s:gui04, s:gui02, s:cterm04, s:cterm02 ],
	\ [ s:gui04, s:gui01, s:cterm04, s:cterm01 ])
let g:airline#themes#lovely_night_eighties#palette.replace_modified = {
	\ 'airline_c' : [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]}

let g:airline#themes#lovely_night_eighties#palette.visual = airline#themes#generate_color_map(
	\ [ s:gui00, s:guiPink, s:cterm00, s:ctermPink ],
	\ [ s:gui04, s:gui02, s:cterm04, s:cterm02 ],
	\ [ s:gui04, s:gui01, s:cterm04, s:cterm01 ])
let g:airline#themes#lovely_night_eighties#palette.visual_modified = {
	\ 'airline_c' : [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]}

let g:airline#themes#lovely_night_eighties#palette.inactive = airline#themes#generate_color_map(
	\ [ s:gui00, s:gui01, s:cterm00, s:cterm01 ],
	\ [ s:gui04, s:gui01, s:cterm04, s:cterm01 ],
	\ [ s:gui05, s:gui01, s:cterm05, s:cterm01 ])
