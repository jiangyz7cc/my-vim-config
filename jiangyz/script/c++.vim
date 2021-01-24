"ec "c++.vim start loading!"

if &cp||exists("cpp")
	ec "c++.vim was loaded."
	finish
else
	let g:cpp=1
	ec "c++.vim continue loading..."
endif

inoremap #na using namespace std;<Esc>vb
inoremap #co cout<<<<endl;<Esc>6hi
inoremap #cls class {<CR>};<ESC>kwa
inoremap #try try{<CR><CR>}catch(){<CR>}<ESC>2ki<Tab>

"--func begin--
func! Cpp_AddEmptyTemplate()
	let cpp_head="#include <iostream>\n"
	\."using namespace std;\n"
	\."\n"
	\."int main(){\n"
	\."    return 0;\n"
	\."}"
	silent put!=cpp_head
endfunction
"--func end--
