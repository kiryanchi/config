lua require('init')

"" General Setting
filetype plugin on

set number			" 줄 번호
set hlsearch			" 검색어 하이라이팅
set ignorecase			" 검색 대소문자 무시
set showmatch			" 괄호 매칭
set wrap			" 자동 줄바꿈
set hidden

"" Optional Setting
set relativenumber
set title			" 타이틀바에 현재 편집중인 파일을 표시
set cursorline			" 현재 라인 강조
set ruler			" 커서의 위치 항상 표시

syntax sync minlines=200	" vim 속도 향상
set clipboard=unnamedplus	" os의 clipboard 사용

"" Turn of swap
set noswapfile			" .swap 파일 생성안되게 하기
set nobackup
set nowb

"" Indent
set cindent			" 자동 들여쓰기
set tabstop=2			" 탭 할때 2칸
set shiftwidth=2		" >> 또는 << 할때 2칸
set noexpandtab			" tap을 스페이스바로 변환하지 않음
" set expandtab			" tap을 스페이스바로 변환

" Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType typescript,typescriptreact,javascript,javascriptreact,html,css EmmetInstall
colorscheme nightfox
let g:python3_host_prog = "/Users/kiryanchi/.pyenv/versions/3.10.2/bin/python3.10"
