" .vim/ftdetect/filetype.vim

autocmd BufRead,BufNewFile Gemfile    setfiletype ruby
autocmd BufRead,BufNewFile Guardfile  setfiletype ruby
autocmd BufRead,BufNewFile *.rabl     setfiletype ruby
autocmd BufRead,BufNewFile *.jbuilder setfiletype ruby
autocmd BufRead,BufNewFile *.ru       setfiletype ruby
