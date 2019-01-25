
"Author: FuDesign2008@163.com
"Date: 2019-01-25
"

if &cp || exists("g:toggle_number_loaded")
    finish
endif
let g:toggle_number_loaded = 1
let s:save_cpo = &cpo
set cpo&vim

let t:maximizeCurrentWindow = 0
function! s:ToggleMaximizeCurrentWindow()
  if t:maximizeCurrentWindow == 0
    :vertical resize "<C-w>\|
    :resize          "<C-w>_
    let t:maximizeCurrentWindow = 1
  else
    :exe "normal \<C-W>="
    let t:maximizeCurrentWindow = 0
  endif
endfunction

command! ToggleWindow call s:ToggleMaximizeCurrentWindow()

if !exists('g:toggle_window_custom_keymap') || !g:toggle_window_custom_keymap
    nnoremap <F3> :ToggleWindow<CR>
endif


let &cpo = s:save_cpo


