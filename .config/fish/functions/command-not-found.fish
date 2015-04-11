function command-not-found
        set cmd $argv[2]
        set pkgs (pkgfile -b -v $argv 2>/dev/null)
        if test -n $pkgs
                echo "$cmd may be found in the following packages:"
                echo "$pkgs"
                return 0
        end
        return 127
end
