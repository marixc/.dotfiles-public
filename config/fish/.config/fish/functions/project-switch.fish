function project-switch
    set -l selected

    if test (count $argv) -eq 1
        set selected $argv[1]
    else
        set selected (find ~/projects ~/university ~/work ~/personal -mindepth 1 -maxdepth 2 -type d | fzf)
    end

    if test -z "$selected"
        return 0
    end

    cd "$selected" || return 1
end

