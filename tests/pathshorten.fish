source ~/Projects/pathshorten/functions/pathshorten.fish

@echo -- filepath contain file name --

@test 'invalid parameter exit 0' (pathshorten) = 'Usage: pathshorten path [keep_num]'

@test 'len 3' (pathshorten '~/home/path/text.txt' 3) = '~/hom/pat/text.txt'
@test 'len 2' (pathshorten '~/home/path/text.txt' 2) = '~/ho/pa/text.txt'
@test 'len 1' (pathshorten '~/home/path/text.txt' 1) = '~/h/p/text.txt'
@test 'default length parameter' (pathshorten '~/home/path/text.txt') = '~/ho/pa/text.txt'
@test 'start with /' (pathshorten '/test') = '/test'

@echo -- file path without file name --

@test '/' (pathshorten '/') = '/'
@test '~你好啊/' (pathshorten '~你好啊/') = '~你/'
@test '~/' (pathshorten '~/') = '~/'


