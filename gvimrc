set columns=140 lines=50

" 13 is the JetBrains recommended size.
if has("unix") && !has("mac")
  set guifont=JetBrains\ Mono\ 13
else
  set guifont=JetBrains\ Mono:h13
endif

" JetBrains recommends a line height of 1.2 for their font. There is no line
" height setting, but this corresponds to the number of extra pixels between
" lines, so we can set it so the total adds up to 1.2 of 13 (15.6). We can't
" set it to 2.6, though, so we round to 3.
set linespace=3

" Hide the toolbar and menubar
set guioptions-=T
set guioptions-=m

" Avoid painting empty gray area when using XMonad
set guiheadroom=0

set background=light
colo solarized
