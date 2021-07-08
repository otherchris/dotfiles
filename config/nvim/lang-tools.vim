" ruby
autocmd BufWritePost *.rb :!rubocop -A -o /dev/null %

