function pathshorten
    if test (count $argv) -eq 0
        echo "Usage: pathshorten path [keep_num]"
        return
    end

    set initial_path = $argv[1]
    if test (count $argv) -ge 2
        set keep_num $argv[2]
    else
        set keep_num 2
    end

    set file_paths (string split '/' $argv[1])
    set shorten_path ""
    set file_name (string match -r '[^/]+$' $argv[1])
    set dir_deep (count $file_paths)

    for i in (seq 1 $(math "$dir_deep - 1"))
        set dir $file_paths[$i]
        set dir (string match -r '\S{0,'$keep_num'}' $dir)
        set shorten_path "$shorten_path$dir/"
    end

    set shorten_path "$shorten_path$file_name"
    echo $shorten_path
end
