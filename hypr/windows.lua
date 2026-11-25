-- Windows config
-- To-do: Migrate back to Microsoft Windows

-- Workspace

hl.window_rule(
  {
    name = "obs_scratchpad",
    match = { class = "^com.obsproject.Studio$" },

    workspace = special,
  }
)

-- Apps

hl.window_rule(
  {
    name = "steam_tenfoot_fs",
    match = { initial_title = "^Steam Big Picture Mode$" },

    fullscreen = true,
  }
)

hl.window_rule(
  {
    name = "1password_nocap",
    match = { class = "^1password$" },

    no_screen_share = true,
  }
)

hl.window_rule({
  name = "Helldivers_2",
  match = { initial_title = "^HELLDIVERS™ 2$" },

  stay_focused = true,
  fullscreen = true,
})

hl.window_rule({
  name = "Jackbox_Games",
  match = { initial_title = "^Jackbox" },

  stay_focused = true,
  fullscreen = true,
})

-- Picture-in-Picture

hl.window_rule({
  name = "mpv",
  match = { class = "^mpv$" },

  float = true,
  pin = true,
})

hl.window_rule({
  name = "discord_popout",
  match = { initial_title = "^Discord Popout$" },

  float = true,
  size = {"(16*40)", "(9*40)"},
  move = {"(monitor_w-15-window_w)", "(monitor_h-15-window_h)"},
  pin = true,
})

hl.window_rule({
  name = "discord_popout_alt",
  match = { class = "^discord$", initial_title = "^$" },

  float = true,
  size = {"(16*40)", "(9*40)"},
  move = {"(monitor_w-15-window_w)", "(monitor_h-15-window_h)"},
  pin = true,
})

hl.window_rule({
  name = "firefox_pip",
  match = { class = "^discord$", initial_title = "^$" },

  float = true,
  size = {"(16*40)", "(9*40)"},
  move = {"(monitor_w-15-window_w)", "(monitor_h-15-window_h)"},
  pin = true,
})

-- System Windows

hl.window_rule({
  name = "kitty_floating_class",
  match = { class = "^kitty-floating$" },

  float = true,
  dim_around = false,
})

hl.window_rule({
  name = "xfce_polkit",
  match = { class = "^xfce-polkit$" },

  move = {"monitor_w/2-window_w/2", "monitor_h/2-window_h/2"},
  float = true,
  pin = true,
})

hl.window_rule({
  name = "pulsemixer",
  match = { title = "^pulsemixer$" },

  move = {"monitor_w-window_w-15", 50},
  float = true,
  pin = true,
})

hl.window_rule({
  name = "nmtui",
  match = { title = "^nmtui$" },

  move = {"monitor_w-window_w-15", 50},
  float = true,
  pin = true,
})

hl.window_rule({
  name = "bluetuith",
  match = { title = "^bluetuith$" },

  move = {"monitor_w-window_w-15", 50},
  float = true,
  pin = true,
})

hl.window_rule({
  name = "calc",
  match = { class = "^org.gnome.Calculator$" },

  float = true,
})

-- Blur

hl.layer_rule({
  name = "status_bar_blur",
  match = { namespace = "waybar" },

  blur = true,
  ignore_alpha = 0.1,
})

hl.layer_rule({
  name = "notification_blur",
  match = { namespace = "notifications" },

  blur = true,
  ignore_alpha = 0.1,
})

hl.layer_rule({
  name = "swayosd_blur",
  match = { namespace = "swayosd" },

  blur = true,
  ignore_alpha = 0.1,
})

-- Tearing

hl.window_rule({
    name  = "freesync-test-tear",
    match = { title = "^Freesync test$" },

    immediate = true,
})

-- Miscellaneous

hl.layer_rule({
  name = "no-anim-on-selection",
  match = { namespace = "^selection$" },

  no_anim = true,
})

hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})
