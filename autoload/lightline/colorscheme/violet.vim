" =============================================================================
" Filename: autoload/lightline/colorscheme/violet.vim
" Author: https://github.com/nrhodes91
" License: Unlicense
" Last Change: 2018/09/17
" =============================================================================

let s:N1 = [ '#38264b', '#875faf', 250, 97, 'bold' ]
let s:N2 = [ '#ba75ff', '#4e4e4e', 170, 239 ]
let s:N3 = [ '#c6c6c6', '#3a3a3a', 251, 237 ]

let s:I1 = [ '#105640', '#20af81', 253, 35, 'bold' ]
let s:I2 = [ s:I1[1], s:N2[1] ]
let s:I3 = s:N3

let s:V1 = [ '#5f0000', '#ff5faf', 52, 205, 'bold' ]
let s:V2 = [ s:V1[1], s:N2[1] ]
let s:V3 = s:N3

let s:R1 = [ '#501629', '#ce537a', 251, 168, 'bold' ]
let s:R2 = [ s:R1[1], s:N2[1] ]
let s:R3 = s:N3


let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}


let s:p.normal.left = [ s:N1, s:N2, s:N3 ]
let s:p.insert.left = [ s:I1, s:I2, s:I3 ]
let s:p.visual.left = [ s:V1, s:V2, s:V3 ]
let s:p.replace.left = [ s:R1, s:R2, s:R3 ]
let s:p.inactive.left = [ s:N2 ]

let s:p.normal.middle = [ s:p.normal.left[2] ]
let s:p.insert.middle = s:p.normal.middle
let s:p.replace.middle = s:p.normal.middle

let s:p.normal.right = s:p.normal.left
let s:p.insert.right = s:p.insert.left
let s:p.visual.right = s:p.visual.left
let s:p.replace.right = s:p.replace.left
let s:p.inactive.right = [ s:N2, s:N2 ]

"let s:p.normal.error = [ [ s:guicolors.black, s:guicolors.red ] ]
"let s:p.normal.warning = [ [ s:guicolors.black, '#e5c07b' ] ]

let s:p.tabline.left = [ s:p.normal.left[1] ]
let s:p.tabline.middle = s:p.normal.middle
let s:p.tabline.right = [ s:p.normal.left[1] ]
let s:p.tabline.tabsel = [ s:p.normal.left[0] ]

let g:lightline#colorscheme#violet#palette = lightline#colorscheme#fill(s:p)
