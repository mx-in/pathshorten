source ~/Projects/pathshorten/functions/pathshorten.fish

@echo -- filepath contain file name --

@test 'invalid parameter exit 0' (pathshorten) = 'Usage: pathshorten path [keep_num]'

@test '~/home/path/text.txt 3' (pathshorten '~/home/path/text.txt' 3) = '~/hom/pat/text.txt'
@test '~/home/path/text.txt 2' (pathshorten '~/home/path/text.txt' 2) = '~/ho/pa/text.txt'
@test '~/home/path/text.txt 1' (pathshorten '~/home/path/text.txt' 1) = '~/h/p/text.txt'
@test '~/home/path/text.txt' (pathshorten '~/home/path/text.txt') = '~/ho/pa/text.txt'
@test '/test' (pathshorten '/test') = '/test'
@test '~/你好啊/你好啊' (pathshorten '~/你好啊/你好啊') = '~/你好/你好啊'

@echo -- file path without file name --

@test '/' (pathshorten '/') = '/'
@test '~' (pathshorten '~') = '~'
@test '~/' (pathshorten '~/') = '~'
@test '~abcd/' (pathshorten '~abcd/') = '~abcd'

@echo -- file path start with $HOME --

@test "$HOME" (pathshorten "$HOME") = '~'
@test "$HOME/" (pathshorten "$HOME/") = '~'
@test "$HOME/filename" (pathshorten "$HOME/filename") = '~/filename'
@test "$HOME/path/filename" (pathshorten "$HOME/path/filename") = '~/pa/filename'


