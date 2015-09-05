function __fish_command_not_found_handler --on-event fish_command_not_found
        set -l __packages (pkgfile --binaries --verbose -- $argv ^/dev/null)
        if test $status -eq 0
                printf "%s may be found in the following packages:\n" "$argv"
                printf "  %s\n" $__packages
        else
                __fish_default_command_not_found_handler $argv
        end
end
