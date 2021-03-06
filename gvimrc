set columns=140 lines=50

if has("mac")
  set guifont=Source\ Code\ Pro:h14
elseif has("unix")
  set guifont=Source\ Code\ Pro\ 12
else
  set guifont=Consolas:h12
endif

" Hide the toolbar and menubar
set guioptions-=T
set guioptions-=m

" Avoid painting empty gray area when using XMonad
set guiheadroom=0

set background=light
colo solarized
