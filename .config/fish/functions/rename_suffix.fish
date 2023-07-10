function rename_suffix
    set oldsuffix $argv[1]
    set newsuffix $argv[2]

    for file in *$oldsuffix
        set newfile (string replace -r "$oldsuffix\$" $newsuffix $file)
        if test -e $newfile
            echo "Error: File $newfile already exists."
        else
            mv $file $newfile
        end
    end
end
