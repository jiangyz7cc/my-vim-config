"ec "c.vim start loading."

if &cp || exists("g:c")
	ec "c.vim was loaded."
	finish
else
	let g:c=1
	ec "c.vim continue loading..."
endif

"--imap c begin--
inoremap #df #define
inoremap #pf printf("\n");<Esc>4hi
inoremap #ps puts();<Esc>hi
inoremap #gc getchar();<Esc>hi
inoremap #pc putchar();<Esc>hi
inoremap #pn putchar('\n');
"inoremap #sf scanf("%d",&);<Esc>hi
inoremap #sf scanf("%",);<Esc>3hi
"--imap c end--

func! C_EmptyTemplate()
	let t="#include <stdio.h>\n"
	\ ."\n"
	\ ."int main(){\n"
	\ ."    return 0;\n"
	\ ."}"
	silent put!=t
endfunc

"func! C_AddScanfLoopTemplate()
"\."    int n;\n"
"\."    while(~scanf(\"%d\",&n)){\n"
"\."    }\n"
