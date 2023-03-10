vim.cmd([[
if has_key(g:plugs, "vimtex")
	let g:tex_flavor= 'latex'
  let g:vimtex_syntax_enabled = 0
  let g:vimtex_syntax_conceal_disable = 1
	let g:vimtex_view_method='zathura'

	let g:vimtex_quickfix_mode = 0
	let g:tex_conceal='abdmg'
	set conceallevel=1
	let g:vimtex_compiler_latexmk = {
			\ 'build_dir' : 'build',
			\ 'callback' : 1,
			\ 'continuous' : 1,
			\ 'executable' : 'latexmk',
			\ 'hooks' : [],
			\ 'options' : [
			\   '-verbose',
			\   '-file-line-error',
			\   '-synctex=1',
			\   '-interaction=nonstopmode',
			\ ],
			\}
endif
]])
--let g:vimtex_view_general_viewer = 'C:\Users\23792\AppData\Local\SumatraPDF\SumatraPDF.exe'
--let g:vimtex_view_general_options_latexmk = '-reuse-instance'
--let g:vimtex_view_general_options
--\ = '-reuse-instance -forward-search @tex @line @pdf'
--\ . ' -inverse-search "' . exepath(v:progpath)
--\ . ' --servername ' . v:servername
--\ . ' --remote-send \"^<C-\^>^<C-n^>'
--\ . ':execute ''drop '' . fnameescape(''\%f'')^<CR^>'
--\ . ':\%l^<CR^>:normal\! zzzv^<CR^>'
--\ . ':call remote_foreground('''.v:servername.''')^<CR^>^<CR^>\""'
