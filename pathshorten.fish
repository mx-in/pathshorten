#!/bin/fish

#function pathshorten -a num -b initial_path -c replacement_path
function pathshorten -a num inital_path

    echo "pathshorten called with $num"

    echo "args:" $argv

    echo num: $num
    echo initial_path: $initial_path
    return
    echo initial_path: $initial_path
    echo replacement_path: $replacement_path
    echo $initial_path

    return

    set file_path (string split '/' $argv[1])
    set initial_path (string split '/' $initial_path)
    set shortened ""
    set file_name (string match -r '[^/]+$' $argv[1])
    set file_path_length (count $file_path)
    if test $file_path[1] = $initial_path[1]
        set file_path[1] $replacement_path
    end
    for i in (seq 1 $(math "$file_path_length - 1"))
        set dir $file_path[$i]
        set dir (string match -r '^[^A-Za-z0-9]*([^\s\/]+)*([^A-Za-z0-9]{0,'$num'}[A-Za-z0-9]{0,'$num'})?[A-Za-z0-9]*' $dir)
        set shortened $shortened $dir
        if test $i -lt $(math "$file_path_length - 1")
            set shortened $shortened /
        end
    end
    set shortened $shortened $file_name
    echo $shortened
end
