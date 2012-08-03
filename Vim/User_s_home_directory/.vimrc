" GUI-like Vim run commands(.vimrc)
" This file is part of "Software_Preference_Improvement_Project"
" 官方網站 | Official Site"
" 	https://github.com/Vdragon/Software_Preference_Improvement_Project/"
" 測試於 Vim 版本 | Tested Vim version
" 	7.3.429

" Vi編輯器相容性設定
	" 是否要使用相容於Vi編輯器的設定？
	" This must be first, because it changes other options as a side effect.
			"set compatible
			set nocompatible

" 檔案開啟／儲存設定 | File open/save settings
	" 是否在儲存檔案時建立備份檔（善用版本控制系統來代替這個功能！）
	" do not keep a backup file, use versions instead
			set backup		
			"set nobackup		
	" keep 50 lines of command line history
			set history=50		
	" 檔案字元編碼支援設定
			set encoding=utf-8
			set fileencodings=utf-8,cp950
	" 操作有疑慮時（例如要關閉未儲存之變更檔案時），會以明確的文字來詢問
			set confirm      
			"set noconfirm

" 檢視相關設定 | View settings
	" 是否顯示列（行）號 | Display the line number
			"set nonumber 
			set number 
	" 是否於下方狀態列的右側顯示目前編輯位置資訊（列、行、所在處百分比）？ 
			"set noruler
			set ruler        
	" 是否於右下角顯示尚未輸入完全的命令內容
	" display incomplete commands
			set showcmd		
			"set noshowcmd		
	" 背景顏色色調選擇
			set background=dark
			"set background=light

" 編輯喜好設定 | Editing preference settings
	" 縮排設定 | Indentation settings
		" 參考資料 | Reference Data
		"		http://vim.wikia.com/wiki/Indenting_source_code
		" 設定代表「一個 tab 字元」的寬度
				set tabstop=2
				"set notabstop
		" 用 space 字元代替 tab 字元
				"set expandtab
				set noexpandtab
		"
				"set softtabstop=2
				"無nosofttabstop選項
		" 設定 shift(>>, <<, ==) 的寬度
				set shiftwidth=2 
				"no setshiftwidth
			" 
				"set smarttab
				set nosmarttab
		" 是否於換行時自動將游標置於前一列縮排的位置
				set autoindent	
				"set noautoindent
		" 設定 smartindent
				"set smartindent  
				set nosmartindent  
		"
			"setcindent
			"nosetcindent
		
		" 縮排按鍵設定 | Indentation keys settings
			" 來自 | Source
			"   http://vim.wikia.com/wiki/VimTip224
			"map <Tab> >gb
			"map <S-Tab> v<gv<ESC>0I<ESC>l
			"imap <S-Tab> <ESC>v<gv<ESC>0I
			"vnoremap <Tab> >gv
			"vnoremap <S-Tab> <gv
	" allow backspacing over everything in insert mode
		set backspace=indent,eol,start
	" 啟用滑鼠操作
	" In many terminal emulators the mouse works just fine, thus enable it.
		if has('mouse')
			set mouse=a
		endif

" 搜尋／取代相關設定 | Search/replace settings
	" 設定搜尋忽略大小寫
			set ignorecase   
			"set noignorecase   
	" 在關鍵字還沒完全輸入完畢前就顯示結果
			set noincsearch    
			"set incsearch    
	" 保留 100 個使用過的指令
			set history=100  
	" 是否用一條橫線標示出目前游標所在列
			"set cursorline  
			set nocursorline  
	" 如果顯示介面／終端機支援色彩就開啟最後搜尋的pattern的
	" 顏色凸顯功能
	" when the terminal has colors
	" switch on highlighting the last used search pattern.
			if &t_Co > 2 || has("gui_running")
				set hlsearch
				"set nohlsearch
			endif

" VIM 外掛script相關設定 | VIM plug-in script settings
" omnicppcomplete安裝 | omnicppcomplete installation
		"set nocp
		"filetype plugin on
		"set tags+=~/.vim/tags/tags_cpp

" pathogen.vim安裝 | pathogen.vim installation
		"call pathogen#infect()
		"filetype plugin indent on

