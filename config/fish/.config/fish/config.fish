if status is-interactive
    # Commands to run in interactive sessions can go here
	set fish_greeting #surpresses fish's intro message
    source $HOME/.config/shell/aliasrc
    bind \cf "tmux-sessionizer"
    bind \cg "tmux-sessionizer-max"
    bind \ct "project-switch"

end
