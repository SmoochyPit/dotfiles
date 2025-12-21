if status is-interactive
    # Commands to run in interactive sessions can go here

    starship init fish | source
    source ~/.config/fish/aliases.fish
    source ~/.config/fish/env.fish

    fish_vi_key_bindings
    fish_add_path /home/smooch/.cargo/bin
    fish_add_path /opt/cuda/bin
    fish_add_path /home/smooch/Builds/x-tools/armv6-rpi-linux-gnueabihf/bin
end

set -U fish_greeting

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

function fish_greeting
    # Fetch command here
end
