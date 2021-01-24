"--plugin config begin--
"emmet:
"let g:user_emmet_mode='n'    "only enable normal mode functions.
"let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
"Enable just for html, css.
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
"let g:user_emmet_leader_key='<C-Z>' "Redefine trigger.
"emmet$

"--emmet config end--
"--taglist config begin--
let Tlist_Show_One_File=1    " Disp 1 file.
let Tlist_Exit_OnlyWindow=1  " exit when it's only one window.
let Tlist_Use_Right_Window=0 " disp on the left.
let Tlist_Sort_Type="name"   " disp tag sort by name.
"--taglist config end--

"--NERDTree config begin--
"graphical interface:
let NERDTreeMinimalUI=1
"whether specially mark the node when it was bookmarked.
let NERDTreeMarkBookmarks=0
let NERDTreeShowLineNumbers=1
"the same as set statusline:
"let NERDTreeStatusline=%{exists('b:NERDTree')?b:NERDTree.root.path.str():''}
let NERDTreeWinPos='right'
"seems to be the width.
let NERDTreeWinSize=25
"set the indicator before dir.
let NERDTreeDirArrowCollapsible='-'
let NERDTreeDirArrowExpandable='+'

"behavior:
"when disp dirs collapse dirs have only 1 child. (y:1|n:0).
let NERDTreeCascadeSingleChildDir=0
"when opening dir nodes wheather to recursively open dirs that have only 1 child which's also a dir.
let NERDTreeCascadeOpenSingleChildDir=1
let NERDTreeAutoDeleteBuffer=1 "delete buf after del or rename files.
"args used by NERDTree-<CR> to open a file or dir, args're the behavior modifier for them.
let NERDTreeCustomOpenArgs={
			\ 'file': {'reuse': 'all', 'where': 'p'},
			\ 'dir':{'where':'t'}
			\ }

"a list of regexs described file to ignore.
"magic flag: [[file|dir]] append to the end of regexs to identify file or dir.
let NERDTreeIgnore=['\.exe$[[file]]']
"regexs which used to group or sort the nodes under the parent.
"'\/$' match dirs, '*' means all not matched items,
"[[-timestamp]] sort by time newest->oldest. (- means descending).
let NERDTreeSortOrder=['\/$','\.c','.cpp','.h','*','[[-timestamp]]']
"--NERDTree config$--
"--plugin config$--

"--plugin map:--
"--NERDTree map:--
map <Leader>ntt :NERDTreeToggle<CR>
map <Leader>ntf :NERDTreeFocus<CR>
map <Leader>ntc :NERDTreeCWD<CR>
"--NERDTree map$--

"--TagList map:--
map <Leader>tl :TlistToggle<CR>
"--TagList map$--
"--plugin map$--
