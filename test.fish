@echo -- pathshorten test cases --


#@test
#function test_shorten_file_path
#    set initial_path "/home/username/long/path/to/file"
#    set replacement_path "~/long/path/to/file"
#    set file_path "/home/username/long/path/to/file"
#    set shortened (shorten_file_path $file_path $initial_path $replacement_path)
#    echo $shortened
#    test $shortened = "~/long/path/to/file"
#end

set -l t_path "~/long/path/to/file"
@test "shorten_file_path" (pathshorten -a 2 -b $t_path) = $t_path

