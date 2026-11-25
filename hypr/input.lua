-- Input
-- Program Defaults

local terminal = "kitty"
local fileManager = "yazi"
local menu = "wofi"
local browser = "firefox"

-- General

hl.config({
  input = {
    kb_layout = "us",
    kb_variant = nil,
    kb_model = nil,
--    kb_options = "shift:both_capslock_cancel,caps:escape", -- Careful, breaks my Helldivers!
    kb_rules = nil,
    accel_profile = "flat",

    follow_mouse = 2,
    float_switch_override_focus = 0,

    sensitivity = 0,

    touchpad = {
      disable_while_typing = false,
      natural_scroll = false,
      tap_to_click = false,
    },
  },
  binds = {
    allow_pin_fullscreen = true,
  },
})

-- Gestures

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- Devices

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
-- hl.device({
--     name        = "epic-mouse-v1",
--     sensitivity = -0.5,
-- })

-- Keybinds

-- Utilities
hl.bind("SUPER + Return", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + SHIFT + Return", hl.dsp.exec_cmd(terminal, { float = true }))
hl.bind("SUPER + E", hl.dsp.exec_cmd(fileManager))
hl.bind("SUPER + W", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + SHIFT + E", hl.dsp.exec_cmd(fileManager, { float = true }))
hl.bind("SUPER + R", hl.dsp.exec_cmd(menu))

-- Navigation

-- Arrow keys
hl.bind("SUPER + Left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + Right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + Up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + Down", hl.dsp.focus({ direction = "down" }))

hl.bind("SUPER + SHIFT + Left", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + SHIFT + Right", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + SHIFT + Up", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + Down", hl.dsp.window.move({ direction = "down" }))

hl.bind("SUPER + CONTROL + Left", hl.dsp.window.resize({ x = -50, y = 0 }))
hl.bind("SUPER + CONTROL + Right", hl.dsp.window.resize({ x = 50, y = 0 }))
hl.bind("SUPER + CONTROL + Up", hl.dsp.window.resize({ x = 0, y = -50 }))
hl.bind("SUPER + CONTROL + Down", hl.dsp.window.resize({ x = 0, y = 50 }))

hl.bind("SUPER + ALT + Left", hl.dsp.window.move({ x = -50, y = 0 }))
hl.bind("SUPER + ALT + Right", hl.dsp.window.move({ x = 50, y = 0 }))
hl.bind("SUPER + ALT + Up", hl.dsp.window.move({ x = 0, y = -50 }))
hl.bind("SUPER + ALT + Down", hl.dsp.window.move({ x = 0, y = 50 }))

-- Vim keys
hl.bind("SUPER + H", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "down" }))

hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

hl.bind("SUPER + CONTROL + H", hl.dsp.window.resize({ x = -50, y = 0 }))
hl.bind("SUPER + CONTROL + L", hl.dsp.window.resize({ x = 50, y = 0 }))
hl.bind("SUPER + CONTROL + K", hl.dsp.window.resize({ x = 0, y = -50 }))
hl.bind("SUPER + CONTROL + J", hl.dsp.window.resize({ x = 0, y = 50 }))

hl.bind("SUPER + ALT + H", hl.dsp.window.move({ x = -50, y = 0 }))
hl.bind("SUPER + ALT + L", hl.dsp.window.move({ x = 50, y = 0 }))
hl.bind("SUPER + ALT + K", hl.dsp.window.move({ x = 0, y = -50 }))
hl.bind("SUPER + ALT + J", hl.dsp.window.move({ x = 0, y = 50 }))

-- Switch/move workspaces
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Scratchpad
hl.bind("SUPER + Z", hl.dsp.workspace.toggle_special("magic"))
hl.bind("SUPER + SHIFT + Z", hl.dsp.window.move({ workspace = "special:magic" }))

-- Window State
hl.bind("SUPER + C", hl.dsp.window.close())
hl.bind("SUPER + Space", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + P", hl.dsp.window.pseudo())
hl.bind("SUPER + D", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + Y", hl.dsp.window.pin({ action = "toggle" }))
hl.bind("SUPER + G", hl.dsp.window.center())
hl.bind("SUPER + F", hl.dsp.window.fullscreen_state({ internal = 2, client = 2, action = "toggle" })) -- Fullscreen
hl.bind("SUPER + ALT + F", hl.dsp.window.fullscreen_state({ internal = 1, client = -1, action = "toggle" })) -- Maximize window only
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen_state({ internal = -1, client = 2, action = "toggle" })) -- Fullscreen internal window only

-- Scroll through existing workspaces with mainMod + scroll
-- hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
-- hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Volume
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

-- Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Audio
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioMedia", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioStop", hl.dsp.exec_cmd("playerctl stop"), { locked = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Other
hl.bind("XF86Calculator", hl.dsp.exec_cmd("gnome-calculator"))

-- Screenshot (Area)
hl.bind("SUPER + S", hl.dsp.exec_cmd("grimblast --notify copysave area $(xdg-user-dir PICTURES)/Screenshots/$(date +%Y-%m-%d-%H-%M-%S).png")) -- Copy + Save
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("grimblast --notify copysave area $(xdg-user-dir PICTURES)/Screenshots/$(date +%Y-%m-%d-%H-%M-%S).png")) -- Copy

-- Screenshot (Fullscreen)
hl.bind("Print", hl.dsp.exec_cmd("grimblast --notify copysave screen $(xdg-user-dir PICTURES)/Screenshots/$(date +%Y-%m-%d-%H-%M-%S).png")) -- Copy + Save
hl.bind("SHIFT + Print", hl.dsp.exec_cmd("grimblast --notify copy screen $(xdg-user-dir PICTURES)/Screenshots/$(date +%Y-%m-%d-%H-%M-%S).png")) -- Copy

-- Waybar
hl.bind("SUPER + B", hl.dsp.exec_cmd("killall -SIGUSR1 .waybar-wrapped")) -- Toggle
hl.bind("SUPER + ALT + B", hl.dsp.exec_cmd("killall -SIGUSR2 .waybar-wrapped")) -- Restart

require("utils.zoom")

-- hl.bind("SUPER + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
