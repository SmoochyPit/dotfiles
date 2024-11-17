if status is-interactive
    # Commands to run in interactive sessions can go here

    starship init fish | source
    source ~/.config/fish/aliases.fish
    source ~/.config/fish/env.fish

    fish_vi_key_bindings
    fish_add_path /home/smooch/.cargo/bin
    fish_add_path /opt/cuda/bin
end

set -U fish_greeting

function fish_greeting
    # Fetch command here
end
