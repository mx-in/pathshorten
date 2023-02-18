source ~/Projects/pathshorten/functions/pathshorten.fish

@echo -- pahshorten test cases --


@test "len 3" (pathshorten '~/home/path/text.txt' 3) = '~/hom/pat/text.txt'
@test "len 2" (pathshorten '~/home/path/text.txt' 2) = '~/ho/pa/text.txt'
@test "len 2 without parameter" (pathshorten '~/home/path/text.txt') = '~/ho/pa/text.txt'
@test "len 1" (pathshorten '~/home/path/text.txt' 1) = '~/h/p/text.txt'

