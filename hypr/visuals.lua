-- Visuals

dofile("/home/smooch/.cache/wallust/colors-hyprland.lua")

hl.config({
  misc = {
    force_default_wallpaper = 0,
    disable_hyprland_logo = true,
  },
  decoration = {
    rounding = 8,

    blur = {
      enabled = true,
      size = 5,
      passes = 3,
      new_optimizations = true,
    },

    shadow = {
      enabled = true,
      range = 30,
      render_power = 4,
      color = "rgba(00000040)",
    },

    dim_special = 0.0,
  },
  animations = {
    enabled = true,
  },
  general = {
    gaps_in = 5,
    gaps_out = 10,
    border_size = 2,
--    col.active_border = color7,
--    col.inactive_border = background,
  },
})

-- Animations
-- Default Beziers
hl.curve("easeOutQuint", { type = "bezier", points = { {0.23, 1}, {0.32, 1} } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1} } })
hl.curve("linear", { type = "bezier", points = { {0, 0}, {1, 1} } })
hl.curve("almostLinear", { type = "bezier", points = { {0.5, 0.5}, {0.75, 1} } })
hl.curve("quick", { type = "bezier", points = { {0.15, 0}, {0.1, 1} } })

-- Default springs
hl.curve("easy", { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

-- hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
-- hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
-- hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
-- hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
-- hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 1.21, bezier = "almostLinear", style = "slide" })
-- hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.94, bezier = "almostLinear", style = "slide" })

-- Curves
hl.curve("subtleBounce", { type = "spring", mass = 2, stiffness = 40, dampening = 12 })

-- Animations
hl.animation({ leaf = "global", enabled = true, speed = 5, bezier = "default" })

hl.animation({ leaf = "windows", enabled = true, speed = 1, bezier = "linear", style = "popin 87%" }) -- In and Out
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4.79, spring = "subtleBounce"})
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })

hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint", style = "slide up" })

hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, spring = "subtleBounce", style = "slide" })

hl.animation({ leaf = "specialWorkspaceIn", enabled = true, speed = 1.94, spring = "easy", style = "slide bottom" })
hl.animation({ leaf = "specialWorkspaceOut", enabled = true, speed = 1.94, spring = "easy", style = "slide top" })
 
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 4, bezier = "quick" })
-- hl.animation({ leaf = "fade", enabled = true,  speed = 3.03, bezier = "quick" })
